import 'package:flutter/material.dart';

class DetailVocabularyBody extends StatelessWidget {
  const DetailVocabularyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.85,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Hello",style: Theme.of(context).textTheme.titleLarge,),
          
        ],
      ),
    );
  }
}
