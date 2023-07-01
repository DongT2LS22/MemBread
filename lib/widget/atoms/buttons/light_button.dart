import 'package:flutter/material.dart';
class LightButton extends StatefulWidget {
  void Function()? onPressed;
  Widget child;
  double? width;
  LightButton({Key? key,this.onPressed,required this.child,this.width}) : super(key: key);


  @override
  State<LightButton> createState() => _LightButtonState();
}

class _LightButtonState extends State<LightButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Container(
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: widget.child,
      ),
    );
  }
}
