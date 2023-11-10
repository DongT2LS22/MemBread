import 'package:flutter/material.dart';

class DailyGoalButton extends StatelessWidget {
  bool isFocus;
  int goal;
  void Function() onPressed;
  DailyGoalButton({super.key,this.isFocus = false,required this.goal,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    const Color focusColor = Colors.amber;
    final Color color = Theme.of(context).primaryColor;
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isFocus?focusColor:color,
        shape: const CircleBorder(), // Thiết lập hình dạng hình tròn
        padding: const EdgeInsets.all(16.0), // Đặt kích thước của nút
      ),
      child: Text("$goal",style: Theme.of(context).textTheme.titleMedium,),
    );
  }
}
