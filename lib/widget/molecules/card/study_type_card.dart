import 'package:flutter/material.dart';
class StudyTypeCard extends StatelessWidget {
  IconData icon;
  String title;
  String summary;
  void Function()? onTap;
  StudyTypeCard({Key? key,required this.icon,required this.title,required this.summary,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width-40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          children: [
            Icon(icon,color: Colors.white,size: 30,),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.titleSmall,),
                const SizedBox(height: 5,),
                Text(summary,style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
