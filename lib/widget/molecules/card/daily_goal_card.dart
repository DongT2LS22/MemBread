import 'package:flutter/material.dart';
import '../../atoms/buttons/daily_goal_button.dart';

class DailyGoalCard extends StatefulWidget {
  int goal;
  DailyGoalCard({super.key,this.goal = 5});

  @override
  State<DailyGoalCard> createState() => _DailyGoalCardState();
}

class _DailyGoalCardState extends State<DailyGoalCard> {
  late int _goal;

  @override
  void initState() {
    super.initState();
    _goal = widget.goal;
  }
  void changeGoal(int newGoal){
    setState(() {
      _goal = newGoal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightGreen
      ),
      child: Column(
        children: [
          const Center(
            child: Text("Daily goal",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DailyGoalButton(goal: 5,isFocus: _goal==5,onPressed: ()=>changeGoal(5),),
                  DailyGoalButton(goal: 10,isFocus: _goal==10,onPressed: ()=>changeGoal(10),),
                  DailyGoalButton(goal: 15,isFocus: _goal==15,onPressed: ()=>changeGoal(15),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
