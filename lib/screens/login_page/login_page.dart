import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/buttons/primary_button.dart';
import 'package:gr1_flutter/widget/molecules/login_textfield/login_textfield.dart';
import 'package:gr1_flutter/widget/organisms/none_title_appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed: ()=>Navigator.pop(context)),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginTextField(),
            PrimaryButton(
              width: MediaQuery.of(context).size.width - 40,
              child: Center(
                child: Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
