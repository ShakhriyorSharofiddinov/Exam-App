import 'package:exam_result/Core/size_config.dart';
import 'package:flutter/material.dart';

import '../Core/constants_Login.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          leading: IconButton(
            splashRadius: 30,
            padding: EdgeInsets.only(left: SizeConfig.defaultSize!),
            highlightColor: buttonColor,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: iconTextColor,
            ),
          ),
          leadingWidth: SizeConfig.defaultSize! * 4,
          elevation: 0,
          title: const Text(
            "Forget Password",
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
                    height: SizeConfig.defaultSize! * 24,
                    child: const Image(
                      image: AssetImage("assets/forgetPassword.jpg"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // final TextEditingController _controller = TextEditingController();
  // bool showPassword = false;
  // bool isLoading = false;
  // final _formKey = GlobalKey<FormState>();

  // final emailPattern =
  //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //
  // bool validateEmail(String email) {
  //   final regExp = RegExp(emailPattern);
  //   return regExp.hasMatch(email);
  // }

  // void login() {
  //   if (_formKey.currentState!.validate()) {
  //     isLoading = true;
  //     showPassword = true;
  //     setState(() {});
  //     Future.delayed(const Duration(seconds: 2), () {
  //       isLoading = false;
  //       setState(() {});
  //     });
  //   }
  // }

//Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextFormField(
//                         controller: _controller,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please Enter Your email';
//                           }
//                           if (!validateEmail(_controller.text)) {
//                             return 'Please Enter Valid Email';
//                           }
//                           return null;
//                         },
//                         style: const TextStyle(color: iconTextColor),
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: textFieldColor,
//                             hintText: 'Enter your email',
//                             hintStyle: const TextStyle(color: iconTextColor),
//                             prefixIcon: const Icon(
//                               Icons.email,
//                               color: iconTextColor,
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15.0),
//                               borderSide: BorderSide.none,
//                             ),
//                             focusColor: bgColor),
//                       ),
//                       SizedBox(height: SizeConfig.defaultSize! * 1.5),
//                       showPassword
//                           ? Container(
//                               width: SizeConfig.screenWidth,
//                               height: SizeConfig.defaultSize! * 6,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15),
//                                 color: textFieldColor,
//                               ),
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 1.1),
//                                     child: Icon(
//                                       Icons.lock,
//                                       color: iconTextColor,
//                                       size: SizeConfig.defaultSize! * 2.4,
//                                     ),
//                                   ),
//
//                                   Text(
//                                     "Shakha0412",
//                                     style: TextStyle(
//                                       color: iconTextColor,
//                                       fontSize: SizeConfig.defaultSize! * 1.8,
//                                     ),
//                                   ),
//                                 ],
//                               ))
//                           : Container(),
//                       SizedBox(height: SizeConfig.defaultSize! * 5),
//                       MaterialButton(
//                         minWidth: SizeConfig.screenWidth! / 3,
//                         height: SizeConfig.defaultSize! * 4,
//                         color: iconTextColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15)),
//                         onPressed: () {
//                           login();
//                         },
//                         child: Text(
//                           "Send",
//                           style: TextStyle(
//                               color: bgColor,
//                               fontSize: SizeConfig.defaultSize! * 2),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//  showToast(context, msg: "Please enter your email");
//   void showToast(BuildContext context, {required String msg}) {
//     ScaffoldMessenger.of(context).clearSnackBars();
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         behavior: SnackBarBehavior.floating,
//         backgroundColor: Colors.redAccent,
//         content: Text(
//           msg,
//           style: const TextStyle(color: Colors.white),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
}
