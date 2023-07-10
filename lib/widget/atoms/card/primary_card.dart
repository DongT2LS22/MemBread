import 'package:flutter/material.dart';

class PrimaryCard extends StatelessWidget {
  void Function()? onTap;
  Widget child;
  double? width;
  PrimaryCard({Key? key,this.onTap,required this.child,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: child
      ),
    );
  }
}
