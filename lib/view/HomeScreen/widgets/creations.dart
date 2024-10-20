import 'package:sui_daga/helpers/Methods/methods.dart';

import '../../../routes/routes_helper.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';


class Creations extends StatelessWidget {
   final List<String> images;
   const Creations({super.key, required this.images});

  @override
  Widget build(BuildContext context) {

    Gallery3DController controller = Gallery3DController(
        itemCount: images.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            'Our Creations',
            style: TextStyle(
              color: Color(0xB2212121),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Gallery3D(
          itemConfig: const GalleryItemConfig(
              width: 216,
              height: 348.48,
              radius: 10
          ),
          controller: controller,
          width: 400,
          height: 348.48,
          padding: const EdgeInsets.only(right: 10),
          itemBuilder: (BuildContext context, int index) {
            return Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: isValidUrl(images[index])?NetworkImage(images[index]):AssetImage(images[index]),
                 fit: BoxFit.fill,
               ),
             ),
            );
          },
        ),
      ],
    );
  }
}
