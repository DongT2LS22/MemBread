import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Theme.of(context).primaryColor;
    }

    return SizedBox(
      height: 24,
      width: 24,
      child: Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          }),
    );
  }
}
