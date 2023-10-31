import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/collapse_box/collapse_box_help_center.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/title_appbar.dart';

class HelpCenterPage extends StatefulWidget {
  HelpCenterPage({Key? key}) : super(key: key);

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _resizeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(
            vsync: this, duration: const Duration(milliseconds: 200));
    _resizeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: TitleAppbar(
        onPressed: ()=>Navigator.pop(context),
          title: Text(
            'Help center',
            style: Theme
                .of(context)
                .textTheme
                .titleMedium,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HelpCenterCollapseBox(title: "title", content: "abc")
          ],
        ),
      ),
    );
  }
}
