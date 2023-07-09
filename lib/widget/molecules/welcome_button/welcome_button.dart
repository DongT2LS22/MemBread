import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/login_page/login_page.dart';
import 'package:gr1_flutter/widget/atoms/buttons/light_button.dart';

import '../../../screens/sign_up_page/signup_page.dart';
import '../../atoms/buttons/primary_button.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpPage())),
            width: MediaQuery.of(context).size.width - 40,
            child: Center(
                child: Text(
              "Get started",
              style: Theme.of(context).textTheme.labelMedium,
            ))),
        LightButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage())),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
            child: Text("I already have an account",
                style: Theme.of(context).textTheme.displayMedium),
          ),
        )
      ],
    );
  }
}
