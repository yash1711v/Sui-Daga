import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/view/AboutScreen/about_us_screen.dart';
import 'package:sui_daga/view/ContactUs/contact_us.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controllers/MainScreenController/main_screen_cubit.dart';
import '../../routes/routes_helper.dart';

class CustomEndDrawer extends StatelessWidget {
  final bool? isMainScreen;
  const CustomEndDrawer({super.key, this.isMainScreen});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 50,
          ),
          const Column(
            children: [
              Center(
                child: Text(
                  "MENU",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              if(!(isMainScreen ?? true)){
                Navigator.of(context).popUntil((route) => route.isFirst);
                context.read<MainScreenCubit>().changeIndex(0, context);
              } else {
                context.read<MainScreenCubit>().changeIndex(0, context);
              }
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(AboutUsScreen.id);
            },
          ),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(ContactUs.id);
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () async {
                const url = 'https://sites.google.com/view/steptracker-privacypolicy/home'; // Replace with your privacy policy URL
                await launchUrl(Uri.parse(url));
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        // Add action here
                      },
                      child: Image.asset("assets/Images/Icons/Facebook.png",scale: 3,)),
                  GestureDetector(
                      onTap: () {
                        // Add action here
                      },
                      child: Image.asset("assets/Images/Icons/Instagram.png",scale: 3,)),
                  GestureDetector(
                      onTap: () {
                        // Add action here
                      },
                      child: Image.asset("assets/Images/Icons/Twitter.png",scale: 3,)),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
