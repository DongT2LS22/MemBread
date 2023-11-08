import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

class StreakPage extends StatelessWidget {
  const StreakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed:() => Navigator.pop(context),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white),
                    borderRadius: BorderRadius.circular(200)
                ),
                child: Image.asset("assets/streak.png"),
              ),
            ]
        ),
      ),
    );
  }
}
