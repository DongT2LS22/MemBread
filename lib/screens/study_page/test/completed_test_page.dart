import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/buttons/primary_text_button.dart';

class CompletedTestPage extends StatelessWidget {
  List<Map<String, bool>> answers;
  CompletedTestPage({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int trueAnswer = answers.where((element) => element.values.first == true).length;
    int falseAnswer = answers.where((element) => element.values.first == false).length;
    final data = [
      {
        'domain': 'true',
        'measure': trueAnswer
      },
      {
        'domain': 'false',
        'measure': falseAnswer
      }
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Completed",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 180,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/2 - 20,
                  child: DChartPie(
                      labelColor: Colors.white,
                      data: data,
                      donutWidth: 30,
                      labelPosition: PieLabelPosition.auto,
                      fillColor: (data, index) {
                        switch (data['domain']) {
                          case 'false':
                            return Colors.red;
                          case 'true':
                            return Theme.of(context).primaryColor;
                          default:
                            return Colors.white;
                        }
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width/2 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("True   $trueAnswer",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Theme.of(context).primaryColor),),
                      const SizedBox(height: 10,),
                      Text("False  $falseAnswer",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.red,),)
                    ],
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PrimaryTextButton(text: "Back to study",onPressed: ()=>Navigator.pop(context),),
          
        ],
      ),
    );
  }
}
