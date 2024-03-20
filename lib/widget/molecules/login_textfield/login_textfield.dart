import 'package:flutter/material.dart';
import 'package:gr1_flutter/models/user/user.dart';
import 'package:gr1_flutter/screens/forgot_pass_page/forgot_pass_page.dart';
import '../../../screens/home_page_remake/home_page.dart';
import '../../atoms/buttons/primary_button.dart';
import '../../atoms/checkbox/checkbox.dart';
import '../../atoms/text_fields/email_textfield.dart';
import '../../atoms/text_fields/pass_textfield.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  late bool status = false; // neu ma mat khau sai thi status = true
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello there",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            EmailTextField(
              controller: emailController,
            ),
            const SizedBox(height: 30),
            PassTextField(
              controller: passController,
            ),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassPage()));
                  },
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  )),
            ),
          ],
        ),
        PrimaryButton(
          onPressed: () async {
            final response = await User.login(emailController.text, passController.text);
            if(response.statusCode == 200) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage(courseId: 2,)));
            }else{
              print(response.statusCode);
              setState(() {
                status = true;
              });
            }
          },
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
            child: Text(
              "Sign in",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        )
      ],
    );
  }
}
