import 'package:flutter/material.dart';
import '../../../models/user.dart';
import '../../atoms/buttons/primary_button.dart';
import '../../atoms/text_fields/email_textfield.dart';
import '../../atoms/text_fields/name_textfield.dart';
import '../../atoms/text_fields/pass_textfield.dart';
import '../../atoms/text_fields/phone_textfield.dart';

class SignInTextField extends StatefulWidget {
  const SignInTextField({Key? key}) : super(key: key);

  @override
  State<SignInTextField> createState() => _SignInTextFieldState();
}

class _SignInTextFieldState extends State<SignInTextField> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  late bool status;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    status = false;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign up",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Enter your information to register new account and get some amazing courses",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 20,
            ),
            status?Column(
              children: const [
                Text(
                  "You need to fill all the information",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
                SizedBox(height: 10,),
              ],
            ) : const SizedBox(height: 20,),
            EmailTextField(
              controller: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            PassTextField(
              controller: passController,
            ),
            const SizedBox(
              height: 20,
            ),
            NameTextField(
              controller: nameController,
            ),
            const SizedBox(
              height: 20,
            ),
            PhoneTextField(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        PrimaryButton(
          onPressed: () async {
            final response = await User.register(
                User(email: emailController.text, name: nameController.text),
                passController.text);
            if (response.statusCode == 200) {
              Navigator.pop(context);
            } else {
              setState(() {
                status = true;
              });
            }
          },
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
            child: Text(
              "Sign up",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        )
      ],
    );
  }
}
