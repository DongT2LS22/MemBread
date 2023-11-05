import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/card/lesson_card.dart';

class Study extends StatelessWidget {
  const Study({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LessonCard(order: 0, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 1, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 2, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 3, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 4, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 5, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 6, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 7, title: "Hello"),
            const SizedBox(height: 5,),
            LessonCard(order: 8, title: "Hello"),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
