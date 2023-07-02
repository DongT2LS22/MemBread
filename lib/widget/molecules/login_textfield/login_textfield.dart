import 'package:flutter/material.dart';

import '../../atoms/checkbox/checkbox.dart';
import '../../atoms/text_fields/email_textfield.dart';
import '../../atoms/text_fields/pass_textfield.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello there",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 30),
        EmailTextField(),
        const SizedBox(height: 30),
        PassTextField(),
        const SizedBox(height: 30),
        Row(
          children: [
            const CheckBox(),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Remember me",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).dividerColor,
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot password ?",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              )),
        )
      ],
    );
  }
}
