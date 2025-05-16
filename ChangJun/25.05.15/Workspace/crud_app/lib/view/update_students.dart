import 'dart:convert';
import 'package:crud_app/model/students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UpdateStudents extends StatefulWidget {
  const UpdateStudents({super.key});

  @override
  State<UpdateStudents> createState() => _UpdateStudentsState();
}

class _UpdateStudentsState extends State<UpdateStudents> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deptController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  late String studentCode;
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
        title: Text('Update for CRUD'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildTextField(codeController, "학번 입니다.",true),
            _buildTextField(nameController, "이름 입니다.",false),
            _buildTextField(deptController, "학과 입니다.",false),
            _buildTextField(phoneController, "전화번호 입니다.",false),
            _buildTextField(addressController, "주소 입니다.",false),
            ElevatedButton(
              onPressed: () {
                updateStudent();
              }, 
              child: Text('수정'),
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
// Post 방식의 update 작업
updateStudent()async{
  try{
    final student = Students(
      code: studentCode, 
      name: nameController.text, 
      dept: deptController.text, 
      phone: phoneController.text, 
      address: addressController.text
    );
    final url = Uri.parse('http://127.0.0.1:8000/update');
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
    title: "수정 결과",
    middleText: "수정이 완료 되었습니다.",
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
    '수정시 문제가 발생 했습니다.',
    duration: Duration(seconds: 2)
  );
}
// ------------------------ //
}// class