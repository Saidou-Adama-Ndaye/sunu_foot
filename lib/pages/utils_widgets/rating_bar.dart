import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  final double itemSize;
  final double initialRating;
  final double minRating;
  final Axis direction;
  final bool allowHalfRating;
  final int itemCount;
  final EdgeInsetsGeometry itemPadding;
  final Color color;
  final double size;
  final ValueChanged<double>? onRatingUpdate;

  const CustomRatingBar({
    Key? key,
    this.itemSize = 10.0,
    this.initialRating = 0.0,
    this.minRating = 1.0,
    this.direction = Axis.horizontal,
    this.allowHalfRating = false,
    this.itemCount = 5,
    this.itemPadding = EdgeInsets.zero,
    this.color = Colors.amber,
    this.size = 24.0,
    this.onRatingUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: itemSize,
      initialRating: initialRating,
      minRating: minRating,
      direction: direction,
      allowHalfRating: allowHalfRating,
      itemCount: itemCount,
      itemPadding: itemPadding,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: color,
        size: size,
      ),
      onRatingUpdate: onRatingUpdate!,
    );
  }
}
