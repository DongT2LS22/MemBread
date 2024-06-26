import 'package:card_swiper/card_swiper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/flash_card/flash_card_page.dart';
import 'package:gr1_flutter/widget/atoms/slider/flash_card_progress_slider.dart';
import '../../molecules/buttons/primary_text_button.dart';
import '../../molecules/flash_card/back_card.dart';
import '../../molecules/flash_card/front_card.dart';

class FlashCardPageBody extends StatefulWidget {
  // Lesson lesson;
  FlashCardPageBody({Key? key}) : super(key: key);

  @override
  State<FlashCardPageBody> createState() => _FlashCardPageBodyState();
}

class _FlashCardPageBodyState extends State<FlashCardPageBody> {
  late double progress;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progress = 0;
  }
  final SwiperController _controller = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlashCardProgressSlider(progress: progress),
        const SizedBox(height: 20,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Swiper(
            onIndexChanged: (index){
              setState(() {
                // progress = index/widget.lesson.units!.length;
                FlashCardInherited.of(context)!.changeIndex(index);
              });
            },
            controller: _controller,
            layout: SwiperLayout.TINDER,
            itemWidth: MediaQuery.of(context).size.width-50,
            itemHeight: 500,
            itemCount: 5,
            loop: false,
            duration: 200,
            itemBuilder: (context, index) {
              return FlipCard(
                  speed: 300,
                  front: FrontCard(vocabulary: "HELLO",),
                  back: BackCard(mean: "HELLO",));
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
