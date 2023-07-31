import 'package:flutter/material.dart';
import '../../../widget/atoms/card/answer_card.dart';

class TestComponent extends StatefulWidget {
  String question;
  List<Map<String,bool>> answer;

  TestComponent({Key? key,required this.question,required this.answer}) : super(key: key);

  @override
  State<TestComponent> createState() => _TestComponentState();
}

class _TestComponentState extends State<TestComponent> {
  check(bool answer){

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.question,style: Theme.of(context).textTheme.displayLarge,),
        Column(
          children: [
            AnswerCard(answer: widget.answer[0].keys.first,onTap: ()=>check(widget.answer[0].values.first)),
            const SizedBox(height: 15,),
            AnswerCard(answer: widget.answer[1].keys.first,onTap: ()=>check(widget.answer[0].values.first)),
            const SizedBox(height: 15,),
            AnswerCard(answer: widget.answer[2].keys.first,onTap: ()=>check(widget.answer[0].values.first)),
            const SizedBox(height: 15,),
            AnswerCard(answer: widget.answer[3].keys.first,onTap: ()=>check(widget.answer[0].values.first))
          ],
        ),
      ],
    );
  }
}
