import '../../../flavors/config/flavor_config.dart';
import '../../../helpers/Methods/methods.dart';
import '../../../routes/routes_helper.dart';

class Banners extends StatelessWidget {
  final List<dynamic> banners;
  final void Function(int)? onPageChanged;
  final PageController? pageController;
  final int index;

  const Banners(
      {super.key,
      required this.banners,
      this.onPageChanged,
      required this.index,
      this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 241.31,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            onPageChanged: onPageChanged,
            children: [
              for (int i = 0; i < banners.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 381,
                    height: 241.31,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: isValidUrl(
                                "${FlavorConfig().baseUrl}/${banners[0].image}")
                            ? NetworkImage(
                                "${FlavorConfig().baseUrl}/${banners[0].image}")
                            : AssetImage(banners[i]),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 10),
        _buildDotIndicator(currentPage: index, banners: banners),
      ],
    );
  }
}

Widget _buildDotIndicator(
    {required int currentPage, required List<dynamic> banners}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(banners.length, (index) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 7,
        height: 7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == index ? Colors.black : Colors.grey,
        ),
      );
    }),
  );
}
