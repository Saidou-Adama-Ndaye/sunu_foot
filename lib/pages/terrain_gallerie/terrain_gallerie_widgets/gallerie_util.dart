import 'package:flutter/material.dart';
import 'package:interactiveviewer_gallery/hero_dialog_route.dart';
import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';

// Fonction pour ouvrir la galerie d'images
void openGallery(BuildContext context, String imageUrl) {
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

// Widget GestureDetector commun pour gérer les interactions de la galerie
Widget galleryGestureDetector({
  required BuildContext context,
  required String tag,
  required String imagePath,
  required Widget child,
}) {
  return GestureDetector(
    onTap: () => openGallery(context, imagePath),
    child: Hero(
      tag: tag,
      child: child,
    ),
  );
}
