import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/collapse_text/helpcenter_collapse_text.dart';

import '../../atoms/buttons/animation_button/expanded_button.dart';


class HelpCenterCollapseBox extends StatefulWidget {
  String title;
  String content;
  HelpCenterCollapseBox({Key? key,required this.title,required this.content}) : super(key: key);

  @override
  State<HelpCenterCollapseBox> createState() => _HelpCenterCollapseBoxState();
}

class _HelpCenterCollapseBoxState extends State<HelpCenterCollapseBox> with TickerProviderStateMixin{
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(
            vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(32, 34, 41, 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .titleSmall,
              ),
              GestureDetector(
                onTap: () {
                  _controller.isCompleted
                      ? _controller.reverse()
                      : _controller.forward();
                },
                child: ExpandedButton(
                  controller: _controller,
                ),
              ),
            ],
          ),
          HelpCenterCollapseText(content: "abc",controller: _controller,)
        ],
      ),
    );
  }
}
