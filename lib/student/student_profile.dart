import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widget/text_style.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({Key? key}) : super(key: key);

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/user_3.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyText("Sharofiddinov Shaxriyor",Colors.blue, 18),

                SizedBox(height: 20),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyText(
                        "+998990636311", Colors.blue,16),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyText(
                        "shaxa@gmail.com",Colors.blue,16),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.password,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyText(
                        "shakha0412",Colors.blue,16),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  onTap: (){
                    signUserOut();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                        size: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MyText(
                          "Tizimdan chiqish", Colors.red,16)
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
