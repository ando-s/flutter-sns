// flutter
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer(
      {Key? key,
      required Color this.color,
      required Color this.borderColor,
      required Color this.shadowColor,
      required Widget this.child})
      : super(key: key);
  final Color color;
  final Color borderColor;
  final Color shadowColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // デバイスのサイズを取得
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    // Centerで囲むと真ん中で配置
    return Center(
      child: Container(
        // symmetric: 左右対称
        margin: EdgeInsets.symmetric(vertical: 8.0),
        width: width * 0.9,
        decoration: BoxDecoration(
            // 全方向にボーダーがつきます
            border: Border.all(
              color: borderColor,
            ),
            boxShadow: [
              BoxShadow(
                  color: shadowColor, blurRadius: 8.0, offset: Offset(0, 0))
            ],
            borderRadius: BorderRadius.circular(16.0),
            color: color),

        child: child,
      ),
    );
  }
}
