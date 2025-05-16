import 'dart:convert';
import 'package:crud_app/model/students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class InsertStudents extends StatefulWidget {
  const InsertStudents({super.key});

  @override
  State<InsertStudents> createState() => _InsertStudentsState();
}

class _InsertStudentsState extends State<InsertStudents> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deptController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insert for CRUD"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextField(codeController, "학번을 입력 하세요"),
            _buildTextField(nameController, "이름을 입력 하세요"),
            _buildTextField(deptController, "학과를 입력 하세요"),
            _buildTextField(phoneController, "전화번호를 입력 하세요"),
            _buildTextField(addressController, "주소를 입력 하세요"),
            ElevatedButton(
              onPressed: () => insertStudent(), 
              child: Text('입력'),
            ),
          ],
        ),
      ),
    );
  }// build
// ------- Widgets -------- //
Widget _buildTextField(TextEditingController conrtoller, String labelText){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: conrtoller,
      decoration: InputDecoration(
        labelText: labelText
      ),
      keyboardType: TextInputType.text,
    ),
  );
}
// ------------------------ //
// ----------- Functions ---------- //
// Post 방식의 insert 작업
insertStudent()async{
  try{
    final student = Students(
      code: codeController.text, 
      name: nameController.text, 
      dept: deptController.text, 
      phone: phoneController.text, 
      address: addressController.text
    );
    final url = Uri.parse('http://127.0.0.1:8000/insert');
    final response = await http.post(
      url,
      headers: {'Content-Type':'application/json'},
      body: json.encode(student.toJSON()),
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