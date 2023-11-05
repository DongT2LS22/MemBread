import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/sign_up_textfield/signup_textfield.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      resizeToAvoidBottomInset: false,
      appBar: NonTitleAppBar(
        onPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const SignInTextField(),
        ),
      )
    );
  }
}
