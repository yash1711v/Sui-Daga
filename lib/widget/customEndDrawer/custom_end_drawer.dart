import 'package:flutter_bloc/flutter_bloc.dart';
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
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(

                    title: const Text("Contact Us"),
                    content: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"))
                    ],
                    actionsAlignment: MainAxisAlignment.center,
                  ));
            },
          ),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      title: const Text("Contact Us"),
                      content: SizedBox(
                        width: 300,
                        height: 80,
                        child: ListView(
                          shrinkWrap: true,
                          children: const [
                            Text(
                                "Email: "),
                            Text(
                                "Mobile Number: "),
                            Text(
                                "Address: "),
                          ],
                        ),
                      )));
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
            height: MediaQuery.of(context).size.height/1.3,
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
