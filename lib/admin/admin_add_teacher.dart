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
      appBar: AppBar(
        title: Text("Talaba qo'shish"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
        child: Column(children: [
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              isDense: true,
              label: Text("Name")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Surname")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Email")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Password")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Image")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Phone")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                isDense: true,
                label: Text("Classes")
            )),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),

        ]),
      ),
    );
  }
}
