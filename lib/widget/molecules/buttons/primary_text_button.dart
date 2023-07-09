import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/buttons/primary_button.dart';

class PrimaryTextButton extends StatelessWidget {
  String text;
  double? width;
  void Function()? onPressed;

  PrimaryTextButton({Key? key, required this.text, this.width, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      width: width,
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      )
    );
  }
}
