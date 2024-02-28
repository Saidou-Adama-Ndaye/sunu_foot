import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CustomLikeButton extends StatelessWidget {
  final double size;
  final Function(bool)? onTap;

  const CustomLikeButton({
    Key? key,
    required this.size,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: size,
      circleColor: const CircleColor(
        start: Color.fromARGB(255, 255, 8, 0),
        end: Color.fromARGB(255, 204, 0, 0),
      ),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: Color.fromARGB(255, 229, 51, 51),
        dotSecondaryColor: Color.fromARGB(255, 204, 0, 0),
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? const Color.fromARGB(255, 255, 77, 77) : Colors.grey,
          size: size,
        );
      },
    );
  }
}
