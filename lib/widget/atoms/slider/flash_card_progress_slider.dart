import 'package:flutter/material.dart';
class FlashCardProgressSlider extends StatefulWidget {
  double progress;
  FlashCardProgressSlider({Key? key,required this.progress}) : super(key: key);

  @override
  State<FlashCardProgressSlider> createState() => _FlashCardProgressSliderState();
}

class _FlashCardProgressSliderState extends State<FlashCardProgressSlider> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 4,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width*widget.progress,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
