import 'dart:math';

import 'package:flutter/material.dart';


class ExpandedButton extends StatefulWidget {
  AnimationController? controller;
  ExpandedButton({Key? key,this.controller}) : super(key: key);

  @override
  State<ExpandedButton> createState() => _ExpandedButtonState();
}

class _ExpandedButtonState extends State<ExpandedButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = widget.controller!;
    _animation = Tween(begin: pi/2, end: 0.0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return Transform.rotate(angle: _animation.value,child: Icon(Icons.arrow_drop_down,size: 30,color: Theme.of(context).primaryColor,),);
      }, animation: _animationController,
    );
  }
}
