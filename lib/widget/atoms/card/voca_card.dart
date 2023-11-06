import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/detail_vocabulary_page/detail_vocabulary_page.dart';

class VocaCard extends StatelessWidget {
  VocaCard({super.key,required this.voca,required this.mean,this.level = 0});
  String voca;
  String mean;
  int level;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailVocabularyPage(level: 4,))),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2,color: Colors.white)
              ),
              width: 25,
              height: 25,
              child: level == 0 ? Container() : level == 4 ? const Icon(Icons.check) : Center(child: Text('$level',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(voca,style: Theme.of(context).textTheme.titleSmall,),
                Text(mean,style: Theme.of(context).textTheme.displaySmall,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
