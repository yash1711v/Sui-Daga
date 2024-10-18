
import '../../../routes/routes_helper.dart';

final List _color = [Colors.red, Colors.green, Colors.blue];

class Creations extends StatelessWidget {
  const Creations({super.key});

  @override
  Widget build(BuildContext context) {
    final List _color = [Colors.red, Colors.green, Colors.blue];
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Our Creations',
          style: TextStyle(
            color: Color(0xB2212121),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(
          height: 15,
        ),

        SizedBox(
          height: 388.45,
        ),
      ],
    );
  }
}



class StackCardCarousel extends StatefulWidget {
  @override
  _StackCardCarouselState createState() => _StackCardCarouselState();
}

class _StackCardCarouselState extends State<StackCardCarousel> with SingleTickerProviderStateMixin {
  final List<String> images = [
    'assets/Images/HomeScreenCategories/creation_1.png',
    'assets/Images/HomeScreenCategories/creation_2.png',
    'assets/Images/HomeScreenCategories/creation_3.png',
    'assets/Images/HomeScreenCategories/creation_4.png',
    'assets/Images/HomeScreenCategories/creation_5.png',
  ];

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.6);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.48, // Set a fixed height for the carousel
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: (index == currentIndex) ? 1 : 0.9,
                child: GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.velocity.pixelsPerSecond.dx > 0) {
                      // Swipe Right
                      if (currentIndex > 0) {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    } else {
                      // Swipe Left
                      if (currentIndex < images.length - 1) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    }
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}