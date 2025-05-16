import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Property
  String result = "__________";                 // 네트워크에서 받아온 데이터를 출력할 변수
  late TextEditingController selectController;  // 값을 입력해 네트워크로 보내기 위한 textfield

  @override
  void initState() {
    super.initState();
    selectController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter with Python"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: selectController,
            ),
            Text(
              result
            ),
            TextButton(
              onPressed: () => getJSONDate(), 
              child: Text("Connect")
            ),
            TextButton(
              onPressed: () {
                if (selectController.text.trim().isEmpty) {
                  
                } else{
                  selectJSONData();
                }
              }, 
              child: Text("Select")
            ),
          ],
        ),
      ),
    );
  }// build

// ----- functions ----- //
// 네트워크를 타고 들어가서 데이터를 가져오는 함수
// Database/FastApi/fastapi_02.py 를 이용
getJSONDate()async{
  var url = Uri.parse('http://127.0.0.1:8000');
  var response = await http.get(url);
  var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
  result = dataConvertedJSON['Message'];
  setState(() {});
}
// --------------------------- //
// 네트워크를 이용해 입력한 값에 해당하는 데이터를 가져오는 함수
// Database/FastApi/fastapi_02.py 를 이용
selectJSONData()async{
  var url = Uri.parse('http://127.0.0.1:8000/items/${selectController.text}');
  var response = await http.get(url);
  var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
  result = dataConvertedJSON['item_id'].toString();
  setState(() {});
}
// --------------------------- //
}// class