import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DeleteStudents extends StatefulWidget {
  const DeleteStudents({super.key});

  @override
  State<DeleteStudents> createState() => _DeleteStudentsState();
}

class _DeleteStudentsState extends State<DeleteStudents> {
  late String studentCode;
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deptController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  List data = [];
  @override
  void initState() {
    super.initState();
    studentCode = Get.arguments ?? "__";
    getJSONData();
  }
// ------ Function ---------- //
getJSONData()async{
  var url = Uri.parse("http://127.0.0.1:8000/selectStudent?code=$studentCode");
  var response = await http.get(url);

  data.clear(); // insert 화면에서 돌아 올 때 기존의 data 를 삭제하고 새 데이터를 채워 넣는다.
  var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
  List result = dataConvertedJSON['results'];
  data.addAll(result);
    codeController.text = data[0]['code'];
    nameController.text = data[0]['name'];
    deptController.text = data[0]['dept'];
    phoneController.text = data[0]['phone'];
    addressController.text = data[0]['address'];
  setState(() {});
}
// --------------------------- //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete for CRUD'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildTextField(codeController, "학번", true),
            _buildTextField(nameController, "이름", true),
            _buildTextField(deptController, "학과", true),
            _buildTextField(phoneController, "전화번호", true),
            _buildTextField(addressController, "주소", true),
            ElevatedButton(
              onPressed: () {
                deleteStudent();
              }, 
              child: Text('삭제')
            ),
          ],
        ),
      ),
    );
  }// build
// ------- Widgets -------- //
Widget _buildTextField(TextEditingController conrtoller, String labelText, bool readOnly){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: conrtoller,
      decoration: InputDecoration(
        labelText: labelText
      ),
      keyboardType: TextInputType.text,
      readOnly: readOnly,
    ),
  );
}
// ------------------------ //
deleteStudent()async{
  try{
    final url = Uri.parse('http://127.0.0.1:8000/delete?code=$studentCode');
    final response = await http.post(url);
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
    title: "삭제 결과",
    middleText: "삭제가 완료 되었습니다.",
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
    '삭제시 문제가 발생 했습니다.',
    duration: Duration(seconds: 2)
  );
}
// ------------------------ //
}// class