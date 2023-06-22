import 'package:exam_result/teacher/teacher_test_send.dart';
import 'package:exam_result/widget/text_style.dart';
import 'package:flutter/material.dart';

class TeacherStudents extends StatelessWidget {
  final String className;
  const TeacherStudents(this.className,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          className,
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: (className == "A1 guruh o'quvchilari") ? Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Alimov Sanjar",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Xoldorov Ali",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Temurov Salim",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Nazarov Olim",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Alimov Bekzod",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Salimov Sanjar",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Rahimov Olimjon",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ):Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Alimov Bekzod",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Salimov Sanjar",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Rahimov Olimjon",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Alimov Sanjar",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Xoldorov Ali",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Temurov Salim",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: MyText("Nazarov Olim",Colors.white,18),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherTestSend()));
                },
                splashColor: Colors.transparent,
                splashRadius: 30,
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
