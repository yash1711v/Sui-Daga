import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_cubit.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_state.dart';
import 'package:sui_daga/flavors/config/flavor_config.dart';
import 'package:sui_daga/helpers/Methods/methods.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/view/HomeScreen/widgets/banners.dart';
import 'package:sui_daga/view/HomeScreen/widgets/catogary_section.dart';
import 'package:sui_daga/view/HomeScreen/widgets/creations.dart';

import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/HomeScreen";
  final ProfileModel profileModel;

  HomeScreen({super.key, required this.profileModel});

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
              child: isValidUrl(
                      "${FlavorConfig().baseUrl}/${profileModel!.upperBanner![0].image}")
                  ? Image.network(
                      "${FlavorConfig().baseUrl}/${profileModel!.upperBanner![0].image}",
                      scale: 0.5,
                    )
                  : Image.asset("assets/Images/Banner.png"),
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
                  banners: isValidUrl(
                          "${FlavorConfig().baseUrl}/${profileModel!.middleBanner![0].image}")
                      ? profileModel.middleBanner ?? []
                      : const [
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
            Creations(
              images: isValidUrl(
                      "${FlavorConfig().baseUrl}/${profileModel.collectionBanner![0].image}")
                  ? profileModel.collectionBanner ?? []
                  : [
                      'assets/Images/HomeScreenCategories/creation_1.png',
                      'assets/Images/HomeScreenCategories/creation_2.png',
                      'assets/Images/HomeScreenCategories/creation_3.png',
                      'assets/Images/HomeScreenCategories/creation_4.png',
                      'assets/Images/HomeScreenCategories/creation_5.png',
                    ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: isValidUrl(
                            "${FlavorConfig().baseUrl}/${profileModel.lowerBanner![0].image}")
                        ? profileModel.lowerBanner!.length
                        : [
                            "assets/Images/HomeScreenCategories/banner_image1.png",
                            "assets/Images/HomeScreenCategories/banner_image2.png"
                          ].length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          width: 381,
                          height: 241.31,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: isValidUrl(
                                      "${FlavorConfig().baseUrl}/${profileModel.lowerBanner![0].image}")
                                  ? NetworkImage(
                                      "${FlavorConfig().baseUrl}/${profileModel.lowerBanner![index].image}")
                                  : AssetImage([
                                      "assets/Images/HomeScreenCategories/banner_image1.png",
                                      "assets/Images/HomeScreenCategories/banner_image2.png"
                                    ][index]),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
