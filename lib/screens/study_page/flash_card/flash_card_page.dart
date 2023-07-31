import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/flash_card_appbar.dart';
import 'package:gr1_flutter/widget/organisms/flash_card_page_body.dart';
import '../../../models/course/lesson.dart';

class FlashCardPage extends StatefulWidget {
  Lesson lesson;
  int index;
  FlashCardPage({Key? key, required this.lesson,required this.index}) : super(key: key);

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  late Lesson _lesson;
  late int _index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lesson = widget.lesson;
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
          appBar: FlashCardAppbar(onPressed:()=>Navigator.pop(context),length : _lesson.units!.length),
          body: FlashCardPageBody(lesson: _lesson,),
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
    // TODO: implement updateShouldNotify
    return true;
  }

  static FlashCardInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FlashCardInherited>();
  }

}
