import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallContainer extends StatelessWidget {
  final EdgeInsets pading;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final List<Widget> children; // Liste des widgets enfants de la Row

  SmallContainer({
    required this.pading,
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
    required this.children,
  }); // Constructeur prenant une liste de widgets enfants

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pading,
      width: width.w, // Largeur de l'icône
      height: height.h, // Hauteur de l'icône
      decoration: BoxDecoration(
        color: color, // Couleur de fond grise
        borderRadius: BorderRadius.circular(
            borderRadius.r), // Bordure arrondie pour créer un cercle
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Alignement des éléments de la Row
        children: children, // Utilisation des widgets enfants fournis
      ),
    );
  }
}
