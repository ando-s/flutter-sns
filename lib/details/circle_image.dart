// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, required this.length, required this.image})
      : super(key: key);
  final double length;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(image: DecorationImage(image: image)),
    );
  }
}
