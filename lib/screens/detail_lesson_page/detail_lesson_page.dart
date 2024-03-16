import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/buttons/primary_button.dart';
import 'package:gr1_flutter/widget/atoms/card/voca_card.dart';
import 'package:gr1_flutter/widget/atoms/slider/progress_slider.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/close_title_appbar.dart';

class DetailLessonPage extends StatelessWidget {
  const DetailLessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: CloseTitleAppbar(
          onPressed: () => Navigator.pop(context),
          title: "Hello",
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          color: Theme.of(context).primaryColor,
                          width: 60,
                          height: 70,
                          child: Center(
                              child: Text(
                            "1",
                            style: Theme.of(context).textTheme.titleLarge,
                          )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Hello",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "1/100",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ],
                              ),
                            ),
                            ProgressSlider(
                              progress: 0.1,
                              width: MediaQuery.of(context).size.width - 60,
                              borderRadius: 0,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 4,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  VocaCard(
                    voca: "Hello",
                    mean: "Xin chao",
                    level: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Theme.of(context).cardColor;
                            }
                            return Theme.of(context).primaryColor;
                          },
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Điều chỉnh giá trị này để thay đổi border radius
                          ),
                        ),
                      ),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 160,
                        child: Center(
                          child: Text(
                            "Continue",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                // Trạng thái khi nút được nhấn
                                return Theme.of(context).cardColor;
                              }
                              // Trạng thái mặc định
                              return Theme.of(context).primaryColor;
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Điều chỉnh giá trị này để thay đổi border radius
                            ),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          child: const Center(
                              child: Icon(
                            Icons.menu_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                        )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
