
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../core/size_config.dart';
import '../widget/text_style.dart';

class TeacherTestSend extends StatefulWidget {
  const TeacherTestSend({super.key});

  @override
  State<TeacherTestSend> createState() => _TeacherTestSendState();
}

class _TeacherTestSendState extends State<TeacherTestSend> {
  final TextEditingController _progressController = TextEditingController();
  final TextEditingController _sciencesController = TextEditingController();
  late AnimationController loadingController;
  // File? _file;
  // PlatformFile? _platformFile;
  //
  // selectFile() async {
  //   final file = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['png','jpg', 'jpeg']
  //   );
  //   if(file != null){
  //     // _file = File(file.files.single.path!);
  //     _platformFile = file.files.first;
  //   }
  //   loadingController.forward();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Test natijalarini jo'natish",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
        child: Column(children: [

          TextFormField(
              controller: _progressController,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Natija",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          TextFormField(
              controller: _sciencesController,
              maxLines: 5,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "O'zlashtirish kerak mavzular",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder())),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: const [10,4],
                strokeCap: StrokeCap.round,
                color: Colors.grey,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.folder_open,color: Colors.grey,size: 40,),
                      SizedBox(height: 15,),
                      MyText("File tanlang",Colors.grey,15),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 10),
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
