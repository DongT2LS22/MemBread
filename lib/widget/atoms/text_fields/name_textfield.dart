import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  TextEditingController? controller;
  NameTextField({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 10,),
        TextField(
          controller: controller,
          style: Theme
              .of(context)
              .textTheme
              .displayMedium,
          cursorWidth: 1.5,
          decoration: InputDecoration(
            focusColor: Theme
                .of(context)
                .primaryColor,
          ),
        )
      ],
    );
  }
}
