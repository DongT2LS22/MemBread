import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  String mean;

  BackCard({Key? key, required this.mean}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              mean,
              style: Theme.of(context).textTheme.titleLarge,
              overflow: TextOverflow.visible,
            ),
          )),
    );
  }
}
