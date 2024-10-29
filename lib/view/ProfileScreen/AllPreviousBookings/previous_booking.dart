import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sui_daga/widget/customEndDrawer/custom_end_drawer.dart';

import '../../../controllers/ProfileScreenController/PreviousBookingController/previous_cubit.dart';
import '../../../controllers/ProfileScreenController/PreviousBookingController/previous_state.dart';
import '../../../flavors/config/flavor_config.dart';
import '../../../routes/routes_helper.dart';
import '../../../style/Pallet.dart';
import '../../../style/style.dart';
import '../../../widget/custom_app_bar.dart';

class PreviousBookingScreen extends StatelessWidget {
  static const id = "/PreviousBookingScreen";

  const PreviousBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size(412, 200),
        child: CustomAppBar(
          textUnderLogo: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Pallet.white)),
                  SizedBox(width: 90,),
                  Text(
                    "Previous Bookings",
                    style:
                    Style.h18.copyWith(color: Pallet.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: const CustomEndDrawer(isMainScreen: false,),
      body: BlocBuilder<PreviousCubit, PreviousState>(
        builder: (context, state) {
          if (state.previousBooking == null ||
              state.previousBooking!.isEmpty) {
            if((state.previousBooking ?? []).isEmpty){
              return const Center(
                child: Text("No Previous Booking"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

          } else {
            return ListView.builder(
              itemCount: state.previousBooking!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    width: 380,
                    height: 120,
                    decoration: const BoxDecoration(color: Color(0x0C212121)),
                    child: Row(
                      children: [
                        Container(
                          width: 108.42,
                          height: 107.81,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "${FlavorConfig().baseUrl}/${state.previousBooking![index].category!.image!}"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                         const SizedBox(width: 12,),
                         Padding(
                           padding: const EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("Order no: ",
                                     style: Style.h18.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 13,
                                       fontFamily: 'Montserrat',
                                       fontWeight: FontWeight.w500,
                                       height: 0,)),
                                 // Text("#${state.previousBooking![index].id}",
                                 //     style: Style.h18.copyWith(
                                 //       color: Color(0xFF212121),
                                 //       fontSize: 13,
                                 //       fontFamily: 'Montserrat',
                                 //       fontWeight: FontWeight.w500,
                                 //       height: 0,)),
                                 const SizedBox(width: 100,),
                                 Container(
                                   width: 74,
                                   height: 30,
                                   decoration: const BoxDecoration(
                                     color: Color(0x332D5D72),
                                   ),
                                   child:  Row(
                                     mainAxisSize: MainAxisSize.min,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text(
                                         '${state.previousBooking![index].category!.name}',
                                         style: TextStyle(
                                           color: Color(0xFF2D5D72),
                                           fontSize: 12,
                                           fontFamily: 'Montserrat',
                                           fontWeight: FontWeight.w500,
                                           height: 0,
                                         ),
                                       ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
                              const SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Order Date: ",
                                      style: Style.h18.copyWith(
                                        color: const Color(0xFF212121),
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0,)),
                                  const SizedBox(width: 37,),
                                  Text(DateFormat('dd-MM-yyyy').format(state.previousBooking![index].createdAt!),
                                      style: Style.h18.copyWith(
                                        color: const Color(0xFF212121),
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0,)),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Delivery Date: ",
                                      style: Style.h18.copyWith(
                                        color: const Color(0xFF212121),
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0,)),
                                  const SizedBox(width: 20,),
                                  Text(DateFormat('dd-MM-yyyy').format(state.previousBooking![index].readyByDate!),
                                      style: Style.h18.copyWith(
                                        color: const Color(0xFF212121),
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0,)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 200.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        debugPrint("View");
                                      },
                                      child: const Text("View",
                                        style: TextStyle(
                                          color: Color(0xFF4B8CC2),
                                          fontSize: 13,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                          height: 0,
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                                                     ),
                         )
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
