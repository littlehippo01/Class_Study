import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_todo_list_app/model/imagetodolist.dart';
import 'package:http/http.dart' as http;

class InsertImagetodolist extends StatefulWidget {
  const InsertImagetodolist({super.key});

  @override
  State<InsertImagetodolist> createState() => _InsertImagetodolistState();
}

class _InsertImagetodolistState extends State<InsertImagetodolist> {
  late List imageName;
  late int selectItem;
  late TextEditingController contentsController; 
  late DateTime now;

  @override
  void initState() {
    super.initState();
    contentsController = TextEditingController();
    now = DateTime.now();
    imageName = [
      'images/cart.png',
      'images/clock.png',
      'images/pencil.png',
    ];
    selectItem = 0;
  }

// ------------------- //
// ------------------- //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add View'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(imageName[selectItem]),
                ),
                SizedBox(
                  width: 200,
                  height: 120,
                  child: CupertinoPicker(
                    itemExtent: 200, 
                    scrollController: FixedExtentScrollController(initialItem: 0),
                    onSelectedItemChanged: (value) {
                      selectItem = value;
                      setState(() {});
                    }, 
                    children: List.generate(
                      imageName.length, 
                      (index) => Image.asset(imageName[index],
                      width: 50,
                      height: 50,
                      ),
                    ),
                  ),
                )
              ],
            ),
            TextField(
              controller: contentsController,
              decoration: InputDecoration(
                labelText: '목록을 입력 하세요.'
              ),
            ),
            ElevatedButton(
              onPressed: () {
                insertImagetodoList();
              }, 
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }// build
// -------------------------- Functions -------------------------- //
// Post 방식의 insert 작업
insertImagetodoList()async{
  try{
    final imagetodolist = Imagetodolist(
      contents: contentsController.text, 
      image: imageName[selectItem], 
      insertdate: now.toString()
      );
    final url = Uri.parse('http://127.0.0.1:8000/insert');
    final response = await http.post(
      url,
      headers: {'Content-Type':'application/json'},
      body: json.encode(imagetodolist.toJSON()),
    );
    final data = json.decode(utf8.decode(response.bodyBytes));
    final result = data['result'];

    if (result == 'OK'){
      _showDialog();
    }else{
      errorSnackBar();
    }
  }catch(e){
    errorSnackBar();
  }
}
// ------------------------ //
_showDialog(){
  Get.defaultDialog(
    title: "입력 결과",
    middleText: "입력이 완료 되었습니다.",
    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    barrierDismissible: false,
    actions: [
      TextButton(
        onPressed: () {
          Get.back();
          Get.back();
        }, 
        child: Text('OK')
      ),
    ]
  );
}
// ------------------------ //
errorSnackBar(){
  Get.snackbar(
    'Error', 
    '입력시 문제가 발생 했습니다.',
    duration: Duration(seconds: 2)
  );
}
// ------------------------ //
}// class