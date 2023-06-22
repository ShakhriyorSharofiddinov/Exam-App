import 'package:exam_result/widget/text_style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StudentDetail extends StatelessWidget {
  final String science;
  final int progress;

  const StudentDetail(this.science,this.progress, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          science,
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText("O'zlashtirish", Colors.blue, 20),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 100.0,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 20.0,
                  percent: progress/100,
                  center:Text(
                    "$progress %",
                    style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.grey.shade700,
                  progressColor: Colors.blue,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyText("O'zlashtirishi kerak mavzular", Colors.blue, 20),
            ),
            (science == "Matematika") ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("1 - Parametrli chiziqli tenglamalar", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("2 - Chiziqli tengsizliklar sistemasi", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("3 - Aralashmaga oid masalalar", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("4 - Logarifmik tengsizliklar", Colors.white, 18),
                  ),
                ],
              ),
            ) : (science == "Fizika") ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("1 - Balandlikdan tashlangan jismning yerga urilish tezligi", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("2 - Gorizontga burchak ostida otilgan jismning umumiy koʻchishi", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("3 - Yukni qoʻzgʻalmas holatda saqlab turgan ishqalanish kuchi", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("4 -  Energiya diagrammalari yordamida energiyaning saqlanishini oʻrganish", Colors.white, 18),
                  ),
                ],
              ),
            ) : const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("1 - Personal pronouns", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("2 - There is/there are", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("3 - Present continuous va present simple", Colors.white, 18),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("4 - May/might", Colors.white, 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
