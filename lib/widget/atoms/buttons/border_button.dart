import 'package:flutter/material.dart';
class BorderButton extends StatelessWidget {
  void Function()? onPressed;
  Widget child;
  double? width;
  BorderButton({Key? key,this.width,this.onPressed,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)
        ),
        child: child,
      ),
    );
  }
}
