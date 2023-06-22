import 'package:exam_result/widget/my_card.dart';
import 'package:exam_result/widget/text_style.dart';
import 'package:flutter/material.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 110,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Exam Result",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(height: 10,),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                hintText: "Qidirish",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 26,
                ),
                fillColor: Colors.grey.shade900,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCard("Matematika", "A1", "70%", "12/05/2023", () => null),
            MyCard("Matematika", "A1", "80%", "1/05/2023", () => null),
            MyCard("Fizika", "B2", "70%", "20/04/2023", () => null),
            MyCard("Ingliz tili", "C2", "90%", "12/04/2023", () => null)
          ],
        ),
      )
    );
  }
}
