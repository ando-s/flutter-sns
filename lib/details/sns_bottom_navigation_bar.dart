// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sns/constants/bottom_navigation_bar_elements.dart';
import 'package:flutter_sns/models/sns_bottom_navigation_bar_model.dart';

class SNSBottomNavigationBar extends StatelessWidget {
  const SNSBottomNavigationBar(
      {Key? key,
      required SNSBottomNavigationBarModel this.snsBottomNavigationBarModel})
      : super(key: key);
  final SNSBottomNavigationBarModel snsBottomNavigationBarModel;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: bottomNavigationBarElements,
        type: BottomNavigationBarType.fixed,
        currentIndex: snsBottomNavigationBarModel.currentIndex,
        onTap: (index) =>
            snsBottomNavigationBarModel.onTabTapped(index: index));
  }
}
