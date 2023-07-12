import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  String answer;
  void Function()? onTap;
  AnswerCard({Key? key,required this.answer,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          color: Theme.of(context).colorScheme.background
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(answer,style: Theme.of(context).textTheme.displayMedium,overflow: TextOverflow.visible,),
        ),
      ),
    );
  }
}
