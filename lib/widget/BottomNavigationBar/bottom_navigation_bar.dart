import 'package:flutter_svg/flutter_svg.dart';
import 'package:sui_daga/style/Pallet.dart';

import '../../routes/routes_helper.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final ScrollController? scrollController;
  final int currentPage;
 final void Function(int) onTap;
  const CustomBottomNavigationBar({super.key, this.scrollController,required this.currentPage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration:  const BoxDecoration(
        color: Pallet.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              onTap(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: currentPage == 0? Color(0x26212121) : Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 6,
                      child: SvgPicture.asset("assets/Images/BottomNavigationIcons/HomeScreenIcon.svg",
                        color: currentPage == 0 ? Colors.black : Pallet.grey),

                    ),
                  ],
                ),
                Text(
                  "HOME",
                  style: TextStyle(
                    color: currentPage == 0 ? Colors.black : Pallet.grey,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap(1);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: currentPage == 1? Color(0x26212121) : Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 6,
                      child: SvgPicture.asset("assets/Images/BottomNavigationIcons/booking_icon.svg",
                          color: currentPage == 1 ? Colors.black : Pallet.grey),

                    ),
                  ],
                ),
                Text(
                  "BOOKINGS",
                  style: TextStyle(
                    color: currentPage ==  1? Colors.black : Pallet.grey,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap(2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: currentPage == 2? Color(0x26212121) : Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: SvgPicture.asset("assets/Images/BottomNavigationIcons/profile_icon.svg",
                          color: currentPage == 2 ? Colors.black : Pallet.grey),

                    ),
                  ],
                ),
                Text(
                  "PROFILE",
                  style: TextStyle(
                    color: currentPage == 2 ? Colors.black : Pallet.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
