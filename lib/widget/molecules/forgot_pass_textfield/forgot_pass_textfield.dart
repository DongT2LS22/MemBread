import 'package:flutter/material.dart';

import '../../atoms/text_fields/email_textfield.dart';

class ForgotPassTextField extends StatelessWidget {
  const ForgotPassTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Forgot Password",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Enter your email address to get an OTP code to reset password.",
          style: Theme.of(context).textTheme.displaySmall,
          overflow: TextOverflow.visible,
        ),
        const SizedBox(
          height: 40,
        ),
        EmailTextField()
      ],
    );
  }
}
