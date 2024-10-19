
import '../../../routes/routes_helper.dart';

class Creations extends StatelessWidget {
  const Creations({super.key});

  @override
  Widget build(BuildContext context) {
    final List color = [Colors.red, Colors.green, Colors.blue];
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
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
