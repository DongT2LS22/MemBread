import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/flash_card_appbar.dart';
import 'package:gr1_flutter/widget/organisms/body/flash_card_page_body.dart';


class FlashCardPage extends StatefulWidget {
  // Lesson lesson;
  int index;
  FlashCardPage({Key? key,required this.index}) : super(key: key);

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  late int _index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index = widget.index;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void changeIndex(int index){
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return FlashCardInherited(
        changeIndex: changeIndex,
        index: _index,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          // appBar: FlashCardAppbar(onPressed:()=>Navigator.pop(context),length : _lesson.units!.length),
          // body: FlashCardPageBody(lesson: _lesson,),
        )
    );
  }
}

class FlashCardInherited extends InheritedWidget {
  int index;
  final Widget child;
  final void Function(int) changeIndex;
  FlashCardInherited( {super.key,required this.index,required this.child,required this.changeIndex}):super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  static FlashCardInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FlashCardInherited>();
  }
}
