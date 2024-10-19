import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_cubit.dart';
import 'package:sui_daga/models/HomeScreenModels/CategoriesModel/categories_model.dart';
import 'package:sui_daga/widget/custom_button.dart';

import '../../../helpers/Methods/methods.dart';
import '../../../routes/routes_helper.dart';
import '../../../style/style.dart';

class CategorySection extends StatelessWidget {
  final List<CategoriesModel> categories;

  const CategorySection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 249.52,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "You Say We Design",
              style: Style.h16.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 160,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 13.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 82,
                        height: 116,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: isValidUrl(categories[index].categoryImage)
                                ? NetworkImage(categories[index].categoryImage)
                                : AssetImage(categories[index].categoryImage),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        categories[index].categoryName,
                        style: Style.h16.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 13),
                      ),
                    ],
                  ),
                );
              },
              itemCount: categories.length,
              shrinkWrap: true,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                        child: Text(
                          "Make Booking",
                          style: Style.h15,
                        ),
                        onPressed: () {
                          context.read<MainScreenCubit>().jumpToBookingScreen();
                        })),
              ],
            ),
          )
        ],
      ),
    );
  }
}
