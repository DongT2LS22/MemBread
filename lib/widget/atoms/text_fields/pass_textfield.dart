import 'package:flutter/material.dart';

class PassTextField extends StatefulWidget {
  TextEditingController? controller;
  String? title;
  PassTextField({Key? key,this.controller,this.title}) : super(key: key);

  @override
  State<PassTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title?? "Password",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 10,),
        TextField(
          controller: widget.controller,
          style: Theme
              .of(context)
              .textTheme
              .displayMedium,
          cursorWidth: 1.5,
          obscureText: _isObscure,
          decoration: InputDecoration(
            focusColor: Theme
                .of(context)
                .primaryColor,
            suffixIcon: IconButton(
              icon: _isObscure ? const Icon(Icons.visibility_off) : const Icon(
                  Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
