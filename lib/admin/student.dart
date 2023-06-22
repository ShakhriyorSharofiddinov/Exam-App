import 'package:exam_result/admin/admin_add_student.dart';
import 'package:flutter/material.dart';

class AdminStudentsList extends StatelessWidget {
  const AdminStudentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 110,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Exam Result",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
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
                      borderRadius: BorderRadius.circular(40))),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AdminAddStudent()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: ListView(
          children:[
            ListTile(
              title: Text("Sanjar Suvonov",style: TextStyle(color: Colors.white),),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              title: Text("Xoldorov Ali",style: TextStyle(color: Colors.white),),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              title: Text("Soliyev Umar",style: TextStyle(color: Colors.white),),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              title: Text("Beknurov Umid",style: TextStyle(color: Colors.white),),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
          ]
      ),

    );
  }
}
