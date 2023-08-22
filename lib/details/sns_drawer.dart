// flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns/constants/routes.dart' as routes;
// packages
import 'package:flutter_sns/constants/strings.dart';
import 'package:flutter_sns/models/main_model.dart';
import 'package:flutter_sns/models/themes_model.dart';

class SNSDrawer extends StatelessWidget {
  const SNSDrawer({Key? key, required this.mainModel, required this.themeModel})
      : super(key: key);
  final MainModel mainModel;
  final ThemeModel themeModel;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text(accountTitle),
            onTap: () =>
                routes.toAccountPage(context: context, mainModel: mainModel),
          ),
          ListTile(
              title: Text(themeTitle),
              trailing: CupertinoSwitch(
                  value: themeModel.isDarkTheme,
                  onChanged: (value) =>
                      themeModel.setIsDarkTheme(value: value))),
        ],
      ),
    );
  }
}
