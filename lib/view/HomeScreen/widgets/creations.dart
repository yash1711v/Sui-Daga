
import 'dart:math';

import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../routes/routes_helper.dart';

final List _color = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple];

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
          width: 492.13,
          height: 388.45,
          child: OverlappedCarousel(
            widgets: List.generate(_color.length, (i){return Container(color: _color[i],);}), //List of widgets
            currentIndex: 1,
            onClicked: (index) {
              debugPrint("You clicked at $index");
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("You clicked at $index"),
                ),
              );
            },
            // To obscure or blur cards not in focus use the obscure parameter.
            obscure: 0.4,
            // To control skew angle
            skewAngle: 0.0
          ),
        ),
       SizedBox(
         height: 300,
       )
      ],
    );
  }
}
