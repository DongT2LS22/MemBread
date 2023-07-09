import 'package:card_swiper/card_swiper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/slider/flash_card_progress_slider.dart';
import '../../models/course/lesson.dart';
import '../molecules/buttons/primary_text_button.dart';
import '../molecules/flash_card/back_card.dart';
import '../molecules/flash_card/front_card.dart';

class FlashCardPageBody extends StatefulWidget {
  Lesson lesson;

  FlashCardPageBody({Key? key,required this.lesson}) : super(key: key);

  @override
  State<FlashCardPageBody> createState() => _FlashCardPageBodyState();
}

class _FlashCardPageBodyState extends State<FlashCardPageBody> {
  late double progress;
  late int i;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progress = 0;
    i = 0;
  }
  final SwiperController _controller = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlashCardProgressSlider(progress: progress),
        const SizedBox(height: 20,),
        Center(
          child: Text("${i}/${widget.lesson.units!.length}",style: Theme.of(context).textTheme.titleMedium,),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Swiper(
            onIndexChanged: (index){
              setState(() {
                progress = index/widget.lesson.units!.length;
                i = index;
              });
            },
            controller: _controller,
            layout: SwiperLayout.TINDER,
            itemWidth: MediaQuery.of(context).size.width-50,
            itemHeight: 500,
            itemCount: widget.lesson.units!.length,
            loop: false,
            duration: 200,
            itemBuilder: (context, index) {
              return FlipCard(
                  speed: 300,
                  front: FrontCard(vocabulary: widget.lesson.units![index].vocabulary!,),
                  back: BackCard(mean: widget.lesson.units![index].mean!,));
            },
          ),
        ),
        const SizedBox(height: 50,),
        PrimaryTextButton(
          text: "Reset",
          width: 100,
          onPressed: () => _controller.move(0),
        ),

      ],
    );
  }
}
