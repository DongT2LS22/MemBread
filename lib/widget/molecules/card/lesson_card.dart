import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/home_page/home_page.dart';
import 'package:gr1_flutter/widget/atoms/card/primary_card.dart';
class LessonCard extends StatelessWidget {
  int order;
  String title;
  LessonCard({Key? key,required this.order,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
        width: MediaQuery.of(context).size.width-40,
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(id: 2,currentLesson: order,))),
        child: Row(
          children: [
            Text((order+1).toString(),style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(width: 20,),
            Text(title,style: Theme.of(context).textTheme.titleMedium,overflow: TextOverflow.fade,)
          ],
        )
    );
  }
}
