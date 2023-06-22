import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../admin/admin_home.dart';
import '../../student/student.dart';
import '../../teacher/teacher.dart';
import 'home_page.dart';
import 'login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String? email = snapshot.data?.email;
            switch(email?.substring(email.length-11,email.length-10)){
              case "0": {
                return AdminHomeScreen();
              }
              case "1": {
                return TeacherScreen();
              }
              default: {
                return StudentScreen();
              }
            }
            return LogInHomePage();
          }

          // user is NOT logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
