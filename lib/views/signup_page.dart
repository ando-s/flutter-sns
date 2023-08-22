// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sns/details/rounded_button.dart';
import 'package:flutter_sns/details/rounded_password_field.dart';
//models
import 'package:flutter_sns/models/main_model.dart';
import 'package:flutter_sns/models/signup_model.dart';
// components
import 'package:flutter_sns/details/rounded_text_field.dart';
// constants
import 'package:flutter_sns/constants/strings.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupModel signupModel = ref.watch(signupProvider);
    final TextEditingController emailEditingController =
        TextEditingController(text: signupModel.email);
    final TextEditingController passwordEditingController =
        TextEditingController(text: signupModel.password);
    return Scaffold(
      appBar: AppBar(
        title: Text(signupTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundedTextField(
            color: Colors.green,
            keybordType: TextInputType.emailAddress,
            onChanged: (text) => signupModel.email = text,
            controller: emailEditingController,
            borderColor: Colors.black,
            shadowColor: Colors.purple,
            hintText: mailAddressText,
          ),
          RoundedPasswordField(
              onChanged: (text) => signupModel.password = text,
              passwordEditingController: passwordEditingController,
              obsucureText: signupModel.isObscure,
              toggleObsucredText: () => signupModel.toggleIsObscure(),
              color: Colors.white,
              borderColor: Colors.black,
              shadowColor: Colors.orange),
          RoundedButton(
            onPressed: () async =>
                await signupModel.createUser(context: context),
            widthRate: 0.85,
            color: Colors.red,
            text: signupText,
          ),
        ],
      ),
    );
  }
}
