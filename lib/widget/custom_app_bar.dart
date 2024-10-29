import 'package:flutter_svg/svg.dart';
import '../routes/routes_helper.dart';

class CustomAppBar extends StatelessWidget {
  final Widget textUnderLogo;
  final Widget actionButton;
  const CustomAppBar({super.key, required this.textUnderLogo, required this.actionButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage("assets/Images/appbarBackground.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                actionButton,
                const Spacer(),
                SvgPicture.asset(
                  "assets/Images/appBarLogo.svg",
                  width: 162,
                  height: 54,
                ),
                const Spacer(),

              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          textUnderLogo,

        ],
      ),
    );
  }
}
