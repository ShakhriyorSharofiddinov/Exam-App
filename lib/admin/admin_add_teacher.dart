import 'package:exam_result/widget/text_style.dart';
import 'package:flutter/material.dart';

import '../core/constants_Login.dart';
import '../core/size_config.dart';

class AdminAddTeacher extends StatefulWidget {
  const AdminAddTeacher({Key? key}) : super(key: key);

  @override
  State<AdminAddTeacher> createState() => _AdminAddTeacherState();
}

class _AdminAddTeacherState extends State<AdminAddTeacher> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _imageController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _classesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
          icon: Icon(
            Icons.chevron_left_sharp,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          "O'qituvchi qo'shish",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
        child: Column(children: [
          TextFormField(
              controller: _surnameController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Familya",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _nameController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Ism",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _phoneController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Nomer",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _emailController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _passwordController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _classesController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Fan",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Saqlash"),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
        ]),
      ),
    );
  }
}
