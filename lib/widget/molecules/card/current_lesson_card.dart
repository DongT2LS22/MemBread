import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/study/study_page.dart';
import 'package:gr1_flutter/widget/atoms/buttons/light_button.dart';
import 'package:gr1_flutter/widget/atoms/slider/progress_slider.dart';
import '../../atoms/buttons/border_button.dart';

class CurrentLessonCard extends StatelessWidget {
  String title;
  void Function() onPressed;
  CurrentLessonCard({Key? key, required this.title,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: BorderButton(
              onPressed: onPressed,
              child: Text(
                "Change lesson",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          ProgressSlider(progress: 0.5,width: MediaQuery.of(context).size.width-80,),
          const SizedBox(
            height: 15,
          ),
          Center(
              child: LightButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>StudyPage())),
            width: 200,
            child: Center(
                child: Text(
              "Continue",
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ))
        ],
      ),
    );
  }
}
