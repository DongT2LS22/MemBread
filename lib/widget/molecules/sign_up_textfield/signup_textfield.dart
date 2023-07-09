import 'package:flutter/material.dart';
import '../../atoms/text_fields/email_textfield.dart';
import '../../atoms/text_fields/name_textfield.dart';
import '../../atoms/text_fields/pass_textfield.dart';
import '../../atoms/text_fields/phone_textfield.dart';

class SignInTextField extends StatelessWidget {
  const SignInTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sign up",style: Theme.of(context).textTheme.titleLarge,),
        const SizedBox(height: 30,),
        Text("Enter your information to register new account and get some amazing courses",style: Theme.of(context).textTheme.displaySmall,),
        const SizedBox(height: 40,),
        EmailTextField(),
        const SizedBox(height: 20,),
        PassTextField(),
        const SizedBox(height: 20,),
        NameTextField(),
        const SizedBox(height: 20,),
        PhoneTextField(),
        const SizedBox(height: 20,),
      ],
    );
  }
}
