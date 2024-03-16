import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/home_page_remake/home_page.dart';
import 'package:gr1_flutter/widget/atoms/buttons/border_button.dart';
import 'package:gr1_flutter/widget/atoms/buttons/light_button.dart';
import 'package:gr1_flutter/widget/atoms/buttons/primary_button.dart';

class StreakPage extends StatelessWidget {
  const StreakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 5,color: Colors.white),
                    borderRadius: BorderRadius.circular(200)
                ),
                child: Image.asset("assets/streak.png"),
              ),
              Text("5 days straight!",style: Theme.of(context).textTheme.titleLarge,),
              Text("Increases if you practice every day and will return to zero if you skip a day !",style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LightButton(
                    width: MediaQuery.of(context).size.width/2 - 40,
                    child: Center(child: Text("Share",style: Theme.of(context).textTheme.labelMedium,),),
                  ),
                  PrimaryButton(
                    onPressed:() => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage())),
                    width: MediaQuery.of(context).size.width/2 - 40,
                    child: Center(child: Text("Continue",style: Theme.of(context).textTheme.labelMedium,),),
                  )
                ],
              )
            ]
        ),
      ),
    );
  }
}
