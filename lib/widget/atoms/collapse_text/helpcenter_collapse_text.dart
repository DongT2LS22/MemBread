import 'package:flutter/material.dart';


class HelpCenterCollapseText extends StatefulWidget {
  String content;
  AnimationController? controller;
  HelpCenterCollapseText({Key? key,this.controller,required this.content}) : super(key: key);

  @override
  State<HelpCenterCollapseText> createState() => _HelpCenterCollapseTextState();
}

class _HelpCenterCollapseTextState extends State<HelpCenterCollapseText> {
  late Animation<double> _resizeAnimation;
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = widget.controller!;
    _resizeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _resizeAnimation,
      axis: Axis.vertical,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            SizedBox(height: 1,child: Container(color: Theme.of(context).dividerColor,),),
            const SizedBox(height: 5,),
            Text(widget.content,style: Theme.of(context).textTheme.displaySmall,),
          ]
      ),
    );
  }
}
