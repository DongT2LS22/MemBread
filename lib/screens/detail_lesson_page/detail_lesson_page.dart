import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/card/voca_card.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/close_title_appbar.dart';

class DetailLessonPage extends StatelessWidget {
  const DetailLessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CloseTitleAppbar(onPressed:() => Navigator.pop(context),title: "Hello",),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            VocaCard(voca: "Hello", mean: "Xin chao",level: 0,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 4,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
