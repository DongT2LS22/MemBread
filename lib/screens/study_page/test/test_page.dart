import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/test/completed_test_page.dart';
import 'package:gr1_flutter/widget/organisms/none_title_appbar.dart';
import '../../../models/course/lesson.dart';
import '../../../widget/atoms/card/answer_card.dart';
class TestPage extends StatefulWidget {
  Lesson lesson;
  TestPage({Key? key,required this.lesson}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Map<String,bool>> answers = [];
  late int _index;
  List? _list;
  List? test;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index = 0;
    _list = widget.lesson.units;
  }

  _getRandomAnswer(){
    List<int> randomList = [_index];
    while(randomList.length < 4){
      int random = Random().nextInt(_list!.length);
      if(randomList.contains(random))continue;
      randomList.add(random);
    }
    List<Map<String,bool>> randomAnswers = [
      {"${_list![randomList[0]].mean}" : true},
      {"${_list![randomList[1]].mean}" : false},
      {"${_list![randomList[2]].mean}" : false},
      {"${_list![randomList[3]].mean}" : false},
    ];
    randomAnswers.shuffle();
    return randomAnswers;
  }

  void nextQuestion(String answer,bool isDone){
    setState(() {
      _index = _index + 1;
      answers.add({answer : isDone});
    });
  }

  _getQuestion(){
    if(_index < _list!.length){
      List<Map<String,bool>> answer = _getRandomAnswer();
      return Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_list![_index].vocabulary,style: Theme.of(context).textTheme.displayLarge,),
            Column(
              children: [
                AnswerCard(answer: answer[0].keys.first,onTap: ()=>nextQuestion(answer[0].keys.first,answer[0].values.first)),
                const SizedBox(height: 15,),
                AnswerCard(answer: answer[1].keys.first,onTap: ()=>nextQuestion(answer[1].keys.first,answer[1].values.first),),
                const SizedBox(height: 15,),
                AnswerCard(answer: answer[2].keys.first,onTap: ()=>nextQuestion(answer[2].keys.first,answer[2].values.first)),
                const SizedBox(height: 15,),
                AnswerCard(answer: answer[3].keys.first,onTap: ()=>nextQuestion(answer[3].keys.first,answer[3].values.first),)
              ],
            ),
          ],
        ),
      );
    }else{
      return CompletedTestPage(answers: answers,);
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed:()=> Navigator.pop(context),),
      body:  Container(
        padding: const EdgeInsets.only(top: 0,right: 20,left: 20,bottom: 40),
        child: _getQuestion(),
      ),
    );
  }
}

// class TestInherited extends InheritedWidget {
//   int index;
//   final Widget child;
//   final void Function() nextQuestion;
//   TestInherited({super.key,required this.child,required this.index,required this.nextQuestion}):super(child: child);
//
//   @override
//   bool updateShouldNotify(covariant InheritedWidget oldWidget) {
//     // TODO: implement updateShouldNotify
//     return true;
//   }
//
//   static TestInherited? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<TestInherited>();
//   }
// }