import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_cubit.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_state.dart';
import 'package:sui_daga/view/HomeScreen/widgets/banners.dart';
import 'package:sui_daga/view/HomeScreen/widgets/catogary_section.dart';
import 'package:sui_daga/view/HomeScreen/widgets/creations.dart';

import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/HomeScreen";

  const HomeScreen({super.key});

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
            child: Text(
              "WELCOME",
              style: Style.h18.copyWith(color: Pallet.primary),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset("assets/Images/Banner.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state.categories!.isNotEmpty && state.categories != null) {
                  return CategorySection(
                    categories: state.categories ?? [],
                  );
                }
                return const CategorySection(
                  categories: [],
                );
              },
            ),
            const SizedBox(
              height: 36,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                  return Banners(
                    banners: const [
                      "assets/Images/HomeScreenCategories/banner_image1.png",
                      "assets/Images/HomeScreenCategories/banner_image2.png"
                    ],
                    index: state.index ?? 0,
                    onPageChanged: (int value) {
                      context.read<HomeCubit>().changeIndex(value);
                    },
                    pageController: state.pageController,
                  );

              },
            ),
            const SizedBox(
              height: 36,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Creations(),
            ),

          ],
        ),
      ),
    );
  }
}
