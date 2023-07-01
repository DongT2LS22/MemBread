import 'package:flutter/material.dart';
class PrimaryButton extends StatefulWidget {
  void Function()? onPressed;
  Widget child;
  double? width;
  PrimaryButton({Key? key,this.onPressed,required this.child,this.width}) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onPressed,
        child: Container(
          width: widget.width,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.child,
        ),
    );
  }
}
