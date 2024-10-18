import 'package:sui_daga/widget/custom_button.dart';
import 'package:sui_daga/widget/custom_textfield.dart';

import '../../../routes/routes_helper.dart';
import '../../../style/Pallet.dart';
import '../../../style/style.dart';
import '../../../widget/custom_app_bar.dart';

class HomeService extends StatelessWidget {
  static const id = "/HomeService";

  const HomeService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: CustomAppBar(
          textUnderLogo: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
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
                      child: Icon(Icons.arrow_back_ios, color: Pallet.white)),
                  Text(
                    "Home Booking",
                    style:
                        Style.h18.copyWith(color: Pallet.primary, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          actionButton: IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Add action here
            },
            color: Pallet.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 37,
                ),
                Text(
                  'Fill Address Details',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'House Address',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Container(
                    width: 380,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F4),
                      border: Border.all(color: const Color(0xFFF4F4F4)),
                    ),
                    child: CustomTextField(
                      style: const TextStyle(color: Colors.black),
                      controller: TextEditingController(),
                      hintText: "Address",
                    )),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () {},
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
