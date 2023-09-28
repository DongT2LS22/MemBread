
import 'package:flutter/material.dart';

class PrimaryCard extends StatefulWidget {
  void Function()? onTap;
  Widget child;
  double? width;
  Color? afterOnTapBackGroundColor;
  double? height;
  PrimaryCard({Key? key,this.onTap,required this.child,this.height,this.width,this.afterOnTapBackGroundColor = Colors.black}) : super(key: key);

  @override
  State<PrimaryCard> createState() => _PrimaryCardState();
}

class _PrimaryCardState extends State<PrimaryCard> {
  late bool beforeOnTap;
  late Color changeColor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    beforeOnTap = false;
    changeColor = widget.afterOnTapBackGroundColor??Theme.of(context).primaryColor;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: beforeOnTap==false?Theme.of(context).primaryColor:changeColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: widget.child
      ),
    );
  }
}
