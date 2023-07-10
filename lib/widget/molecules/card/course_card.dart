import 'package:flutter/material.dart';
import 'package:gr1_flutter/models/course/course.dart';

import '../../atoms/card/primary_card.dart';
class CourseCard extends StatelessWidget {
  Course course;
  void Function()? onTap;
  CourseCard({Key? key,this.onTap,required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
      onTap: onTap,
      width: MediaQuery.of(context).size.width-40,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.title!,style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 5,),
                Text(course.description??"",style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),overflow: TextOverflow.ellipsis,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
