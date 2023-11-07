import 'package:flutter/material.dart';

class ChoiceBody extends StatelessWidget {
  const ChoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.85,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Hello",style: Theme.of(context).textTheme.titleLarge,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 20,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("Xin chao 1",style: Theme.of(context).textTheme.titleMedium,),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 20,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("Xin chao 1",style: Theme.of(context).textTheme.titleMedium,),),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 20,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("Xin chao 1",style: Theme.of(context).textTheme.titleMedium,),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 20,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("Xin chao 1",style: Theme.of(context).textTheme.titleMedium,),),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
