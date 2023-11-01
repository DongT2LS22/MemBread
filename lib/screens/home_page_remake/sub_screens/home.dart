import 'package:flutter/material.dart';
import '../../../widget/molecules/card/current_lesson_card.dart';
import '../../../widget/molecules/card/study_type_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrentLessonCard(
              title: "Hello", onPressed: () {  },
            ),
            const SizedBox(
              height: 30,
            ),
            StudyTypeCard(
              title: "Flash card",
              summary: "Quick review with flash cards",
              icon: Icons.rectangle_rounded,
            ),
            const SizedBox(
              height: 10,
            ),
            StudyTypeCard(
                icon: Icons.school,
                title: "Study",
                summary: "Focus on the lessons"),
            const SizedBox(
              height: 10,
            ),
            StudyTypeCard(
                icon: Icons.task_rounded,
                title: "Test",
                summary: "Review what you've learned",
            )
          ],
        ),
      ),
    );
  }
}
