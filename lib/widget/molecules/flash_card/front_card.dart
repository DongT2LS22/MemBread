import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  String vocabulary;

  FrontCard({Key? key, required this.vocabulary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
          vocabulary,
          style: Theme.of(context).textTheme.titleLarge,overflow: TextOverflow.visible,
        ),
            )),
      ),
    );
  }
}
