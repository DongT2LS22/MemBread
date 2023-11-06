import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

class DetailVocabularyPage extends StatelessWidget {
  DetailVocabularyPage({super.key,this.level = 0});
  int level;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed: ()=>Navigator.pop(context),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2,color: Colors.white)
              ),
              width: 50,
              height: 50,
              child: level == 0 ? Container() : level == 4 ? const Icon(Icons.check,size: 30,) : Center(child: Text('$level',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),),
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                Text("Hello",style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(height: 20,),
                Text("Xin chao" , style: Theme.of(context).textTheme.displayLarge,),
              ],
            ),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
