import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_result/Admin/admin_home.dart';
import 'package:exam_result/LogInParol/services/auth_service.dart';
import 'package:exam_result/Student/student_home.dart';
import 'package:exam_result/Teacher/teacher_home.dart';
import 'package:exam_result/home.dart';
import 'package:exam_result/Core/size_config.dart';
import 'package:flutter/material.dart';

import '../Core/constants_Login.dart';
import '../user.dart';
import 'forgot_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  late final List<QuerySnapshot<User>> usersLogInAndPassword;

  final emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  bool validateEmail(String email) {
    final regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      Future.delayed(const Duration(seconds: 2), ()
      {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          primary: false,
          padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
          child: Column(
            children: [
              SizedBox(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.defaultSize! * 30,
                  child: const Image(
                    image: AssetImage("assets/loginLogo.jpg"),
                  )),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _loginController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your email';
                        }
                        if (!validateEmail(_loginController.text)) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: textFieldColor,
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                          hintText: 'Enter your email',
                          hintStyle: const TextStyle(
                              color: Colors.black54),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                          focusColor: Colors.white),
                    ),
                    SizedBox(height: SizeConfig.defaultSize! * 1.5),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: showPassword ? false : true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textFieldColor,
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(color: Colors.black54),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: iconTextColor,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(
                            showPassword
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: iconTextColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        focusColor: bgColor,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ForgotPassScreen()));
                          },
                          child: const Text(
                            "Forgot your password?",
                            // "Next",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: iconTextColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.defaultSize! * 4),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: SizeConfig.defaultSize! * 4,
                      color: iconTextColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () async {
                        login();
                        // for (var element in LoginService().getUsersLogIn()) {
                        //   if (element.login == _loginController &&
                        //       element.password == _passwordController) {
                        //     switch (element.role) {
                        //       case "admin":
                        //         {
                        //           Navigator.pushReplacement(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (_) => AdminHomeScreen()));
                        //         }
                        //         break;
                        //       case "teacher":
                        //         {
                        //           Navigator.pushReplacement(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (_) => TeacherHomeScreen()));
                        //         }
                        //         break;
                        //       case "student":
                        //         {
                        //           Navigator.pushReplacement(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (_) => StudentHomeScreen()));
                        //         }
                        //         break;
                        //     }
                        //   }
                        // }
                      // print(LoginService().getUsersLogIn()[0].role);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: bgColor,
                            fontSize: SizeConfig.defaultSize! * 1.8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
