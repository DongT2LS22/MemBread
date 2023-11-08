import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/card/voca_card.dart';
import 'package:gr1_flutter/widget/atoms/slider/progress_slider.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/close_title_appbar.dart';

class DetailLessonPage extends StatelessWidget {
  const DetailLessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CloseTitleAppbar(onPressed:() => Navigator.pop(context),title: "Hello",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    color:Theme.of(context).primaryColor,
                    width: 60,
                    height: 70,
                    child: Center(
                      child : Text("1",style: Theme.of(context).textTheme.titleLarge,)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Text("Hello",style: Theme.of(context).textTheme.titleMedium,),
                            Text("1/100",style: Theme.of(context).textTheme.displayMedium,),
                          ],
                        ),
                      ),
                      ProgressSlider(progress: 0.1, width: MediaQuery.of(context).size.width-60,borderRadius: 0,)
                    ],
                  )
                ],
              ),
            ),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 0,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 4,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
            VocaCard(voca: "Hello", mean: "Xin chao",level: 2,),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
