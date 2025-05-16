import 'dart:convert';
import 'package:crud_app/model/students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DeleteStudentsPost extends StatefulWidget {
  const DeleteStudentsPost({super.key});

  @override
  State<DeleteStudentsPost> createState() => _UpdateStudentsState();
}

class _UpdateStudentsState extends State<DeleteStudentsPost> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deptController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  late String studentCode;

  @override
  void initState() {
    super.initState();
    studentCode = Get.arguments ?? "__";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete for CRUD'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildTextField(codeController, "학번 입니다.",true),
            _buildTextField(nameController, "이름 입니다.",true),
            _buildTextField(deptController, "학과 입니다.",true),
            _buildTextField(phoneController, "전화번호 입니다.",true),
            _buildTextField(addressController, "주소 입니다.",true),
            ElevatedButton(
              onPressed: () {
                deleteStudent();
              }, 
              child: Text('삭제'),
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
// ----------- Functions ---------- //
// Post 방식의 delete 작업
deleteStudent()async{
  try{
    final url = Uri.parse('http://127.0.0.1:8000/deletepost');
    final response = await http.post(
      url,
      headers: {'Content-Type':'application/json'},
      body: json.encode({'code' :studentCode}),
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