import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactiveviewer_gallery/hero_dialog_route.dart';
import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';

class GalleriePicture extends StatelessWidget {
  final String imagePath;

  const GalleriePicture({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return galleryGestureDetector(
      context: context,
      tag: imagePath,
      imagePath: imagePath,
      child: Container(
        width: 160.w,
        height: 130.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Fonction pour gérer les interactions de la galerie
Widget galleryGestureDetector({
  required BuildContext context,
  required String tag,
  required String imagePath,
  required Widget child,
}) {
  return GestureDetector(
    onTap: () => _openGallery(context, imagePath),
    child: Hero(
      tag: tag,
      child: child,
    ),
  );
}

// Fonction pour ouvrir la galerie d'images
void _openGallery(BuildContext context, String imageUrl) {
  Navigator.of(context).push(
    HeroDialogRoute<void>(
      builder: (BuildContext context) => InteractiveviewerGallery<String>(
        sources: [imageUrl],
        initIndex: 0,
        itemBuilder: (BuildContext context, int index, bool isFocus) {
          return Image.asset(imageUrl, fit: BoxFit.contain);
        },
        onPageChanged: (int pageIndex) {
          print("Page index changed: $pageIndex");
        },
      ),
    ),
  );
}
