import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr1_flutter/models/course/course.dart';
import 'package:gr1_flutter/repositories/course_repository.dart';
import 'package:gr1_flutter/screens/home_page_remake/home_page.dart';
import 'package:gr1_flutter/widget/atoms/buttons/light_button.dart';
import 'package:gr1_flutter/widget/atoms/buttons/primary_button.dart';


class StreakPage extends ConsumerWidget {
  const StreakPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final value = ref.watch(courseGetOne(4));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body:
      // value.when(data : (courseData){
      //   Course? course = courseData;
      //   return Center(
      //     child: Text(course?.title??'NULL',style: TextStyle(fontSize: 50),),
      //   );
      // },
      //   error: (error, s) => Text(error.toString()),
      //   loading: () => const Center(
      //     child: CircularProgressIndicator(),
      //   )
      // )
      Container(
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
              Text("OKE",style: Theme.of(context).textTheme.titleLarge,),
              Text("Increases if you practice every day and will return to zero if you skip a day !",style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LightButton(
                    width: MediaQuery.of(context).size.width/2 - 50,
                    child: Center(child: Text("Share",style: Theme.of(context).textTheme.labelMedium,),),
                  ),
                  PrimaryButton(
                    onPressed:() => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage(courseId: 2,))),
                    width: MediaQuery.of(context).size.width/2 - 50,
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
