import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/BookingController/HomeService/home_service_cubit.dart';
import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/custom_app_bar.dart';

class ContactUs extends StatelessWidget {
  static const id = "/ContactUs";
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: CustomAppBar(
          textUnderLogo: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () {
                context.read<HomeServiceCubit>().resetValues();
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
                  Text(
                    "CONTACT",
                    style:
                    Style.h18.copyWith(color: Pallet.primary, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          actionButton: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                  // Add action here
                },
                color: Pallet.white,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 12,),
            Container(
              width: 380,
              height: 136,
              decoration: ShapeDecoration(
                color: const Color(0xFFE3C5CF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child:  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14,),
                    Icon(Icons.location_on_sharp, color: Pallet.grey, size: 25,),
                    SizedBox(height: 15,),
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 1.5, // Adjust line height
                        ),
                        maxLines: null, // Allows text to wrap across lines
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 380,
              height: 97,
              decoration: ShapeDecoration(
                color: const Color(0xFFE3C5CF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child:  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14,),
                    Icon(Icons.mail, color: Pallet.grey, size: 25,),
                    SizedBox(height: 15,),
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: Text(
                        'Loremipsum@gmail.com',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 1.5, // Adjust line height
                        ),
                        maxLines: null, // Allows text to wrap across lines
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 380,
              height: 97,
              decoration: ShapeDecoration(
                color: const Color(0xFFE3C5CF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child:  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14,),
                    Icon(Icons.phone, color: Pallet.grey, size: 25,),
                    SizedBox(height: 15,),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: Text(
                        '+91 987654321  |  +91 987654321',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 1.5, // Adjust line height
                        ),
                        maxLines: null, // Allows text to wrap across lines
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
