import 'package:exam_result/widget/text_style.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String science;
  final String group;
  final String progress;
  final String date;
  final Function()? onPressed;

  const MyCard(this.science, this.group,this.progress, this.date, this.onPressed,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.white,
          foregroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          backgroundColor: Colors.grey.shade900,
          minimumSize: Size(double.infinity, 110),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: MyText(
                  science,
                  Colors.blue,
                  18,
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: MyText("Guruh:  ${group}", Colors.white, 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: MyText("Natija:  ${progress}", Colors.white, 14),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0,top: 4),
              child: MyText("Sana:  ${date}", Colors.white, 14),
            ),
          ],
        ),
      ),
    );
  }
}
