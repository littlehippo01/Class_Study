import 'dart:convert';
import 'package:crud_app/model/students.dart';
import 'package:crud_app/view/delete_students.dart';
import 'package:crud_app/view/insert_students.dart';
import 'package:crud_app/view/update_students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class QueryStudents extends StatefulWidget {
  const QueryStudents({super.key});

  @override
  State<QueryStudents> createState() => _QueryStudentsState();
}

class _QueryStudentsState extends State<QueryStudents> {
  List<Students> data =[];

  @override
  void initState() {
    super.initState();
    getJSONData();
  }
// ----- Functions ----- //
getJSONData()async{
  var url = Uri.parse("http://127.0.0.1:8000/select");
  var response = await http.get(url);

  data.clear(); // insert 화면에서 돌아 올 때 기존의 data 를 삭제하고 새 데이터를 채워 넣는다.
  var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
  List result = dataConvertedJSON['results'];
  data = result.map((e) => Students.fromJson(e)).toList();
  setState(() {});
}
// --------------------- //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud for Students'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                InsertStudents()
              )!.then((value) => getJSONData()); // 돌아오면 함수를 다시 실행!
            }, 
            icon: Icon(Icons.add_outlined)
          )
        ],
      ),
      body: SizedBox(
        child: Center(
          child: data.isEmpty
          ? Text("데이터가 없습니다.",textAlign: TextAlign.center,)
          :ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final student = data[index];
              return GestureDetector(
                onTap: () {
                  Get.to(
                    UpdateStudents(),
                    arguments: student.code
                    )!.then((value) => getJSONData());
                },
                onLongPress: () {
                  Get.to(
                    DeleteStudents(), 
                    arguments: student.code
                    )!.then((value) => getJSONData());
                },
                onDoubleTap: () {
                  Get.to(
                    DeleteStudents(),
                    arguments: [
                      student.code, 
                      student.name, 
                      student.dept, 
                      student.phone, 
                      student.address, 
                    ]
                    )!.then((value) => getJSONData(),);
                },
                child: Card(
                  color: Colors.amber[50],
                  child: Column(
                    children: [
                      _buildRow("Code : ", student.code),
                      _buildRow("Name : ", student.name),
                      _buildRow("Dept : ", student.dept),
                      _buildRow("Phone : ", student.phone),
                      _buildRow("Address : ", student.address),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }// build
// ------- Widget ------- //
Widget _buildRow(String label, String value){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value)
      ],
    ),
  );
}
// ---------------------- //
}// class