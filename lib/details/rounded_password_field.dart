// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sns/details/text_field_container.dart';
// constants
import 'package:flutter_sns/constants/strings.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.passwordEditingController,
    required this.obsucureText,
    required this.toggleObsucredText,
    required this.color,
    required this.borderColor,
    required this.shadowColor,
  }) : super(key: key);
  final void Function(String)? onChanged;
  final TextEditingController passwordEditingController;
  final bool obsucureText;
  final void Function()? toggleObsucredText;
  final Color color;
  final Color borderColor;
  final Color shadowColor;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        color: Colors.green,
        borderColor: borderColor,
        shadowColor: shadowColor,
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          // onChanged: (text) => signupModel.password = text,
          onChanged: onChanged,
          controller: passwordEditingController,
          obscureText: obsucureText,
          decoration: InputDecoration(
            suffix: InkWell(
              child: obsucureText
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onTap: () => toggleObsucredText,
            ),
            hintText: passwordText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
