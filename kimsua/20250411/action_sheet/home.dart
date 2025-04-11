import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Action Sheet"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => acitonSheet(), 
            child: Text("aciton Sheet"))
          ],
        ),
      ),
    );
  }//build
  //----function----
  acitonSheet(){
    showCupertinoModalPopup(
      context: context,
      barrierDismissible: false, 
      builder: (context) => CupertinoActionSheet(
        title: Text("Title"),
        message: Text("Mssage"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              print("action is pressed");
              Get.back();
            },
             child: Text("Action button")),
              CupertinoActionSheetAction(
            onPressed: () {
              print("action is pressed");
              Get.back();
            },
             child: Text("버튼"))
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed:() {
            Get.back();
          },
           child: Text("cancle")),
      ),);

  }

}