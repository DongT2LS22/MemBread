import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/detail_lesson_page/detail_lesson_page.dart';
import 'package:gr1_flutter/widget/atoms/card/primary_card.dart';
class LessonCard extends StatelessWidget {
  int order;
  String title;
  LessonCard({Key? key,required this.order,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
        width: MediaQuery.of(context).size.width-40,
        onTap: (){
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder:
                  (context, animation, secondaryAnimation) => DetailLessonPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.ease;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
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
