import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/forgot_pass_textfield/forgot_pass_textfield.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        resizeToAvoidBottomInset: false,
        appBar: NonTitleAppBar(onPressed: ()=>Navigator.pop(context)),
        body: Container(
          padding: const EdgeInsets.all(20),
          child:const ForgotPassTextField(),
        ));
  }
}

