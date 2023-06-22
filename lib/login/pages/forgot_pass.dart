import 'package:flutter/material.dart';

import '../../core/constants_Login.dart';
import '../../core/size_config.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                splashRadius: 20,
                highlightColor: buttonColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: iconTextColor,
                ),
              ),
              leadingWidth: SizeConfig.defaultSize! * 5,
              elevation: 0,
              title: const Text(
                "Parolni unutdingizmi",
                style: TextStyle(color: iconTextColor),
              ),
              centerTitle: false,
            ),
            body: SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
                child: Column(
                  children: [
                    SizedBox(
                        width: SizeConfig.screenWidth,
                        height: SizeConfig.defaultSize! * 30,
                        child: const Image(
                          image: AssetImage("assets/forgetPassword.png"),
                        )),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
