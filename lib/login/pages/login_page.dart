import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../core/constants_Login.dart';
import '../../core/size_config.dart';
import 'forgot_pass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  final emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  bool validateEmail(String email) {
    final regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      signUserIn();
    }
  }

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'No\'togri email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'No\'togri parol',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.defaultSize! * 35,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/loginLogo.png"),
                  )),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Emailingizni kiriting';
                        }
                        if (!validateEmail(emailController.text)) {
                          return 'Yaroqli elektron pochta manzilini kiriting';
                        }
                        return null;
                      },
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: textFieldColor,
                          isDense: true,
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.white),
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
                      controller: passwordController,
                      obscureText: showPassword ? false : true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Parolingizni kiriting';
                        }
                        if (value.length < 6) {
                          return 'Parol kamida 6 ta belgidan iborat bo''lishi kerak';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textFieldColor,
                        isDense: true,
                        hintText: 'Parol',
                        hintStyle: const TextStyle(color: Colors.white),
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
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                    // SizedBox(
                    //   width: SizeConfig.screenWidth,
                    //   child: Align(
                    //     alignment: Alignment.centerRight,
                    //     child: TextButton(
                    //       onPressed: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (_) => ForgotPassScreen()));
                    //       },
                    //       child: const Text(
                    //         "Parolni unutdingizmi?",
                    //         // "Next",
                    //         textAlign: TextAlign.right,
                    //         style: TextStyle(color: Colors.red),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: SizeConfig.defaultSize! * 12),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: SizeConfig.defaultSize! * 5,
                      color: iconTextColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        // createAlbum();
                        login();
                      },
                      child: Text(
                        "Tizimga kirish",
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
