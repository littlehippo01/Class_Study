import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:image_todo_list_app/model/imagetodolist.dart';
import 'package:image_todo_list_app/view/insert_imagetodolist.dart';
import 'package:http/http.dart' as http;

class QueryImagetodolist extends StatefulWidget {
  const QueryImagetodolist({super.key});

  @override
  State<QueryImagetodolist> createState() => _QueryImagetodolistState();
}

class _QueryImagetodolistState extends State<QueryImagetodolist> {
  List data = [];

  @override
  void initState() {
    super.initState();
    getJSONData();
  }


// ------------------------ //
getJSONData()async{
  var url = Uri.parse("http://127.0.0.1:8000/select");
  var response = await http.get(url);

  data.clear(); // insert 화면에서 돌아 올 때 기존의 data 를 삭제하고 새 데이터를 채워 넣는다.
  var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
  List result = dataConvertedJSON['results'];
  
  data = result.map((e) => Imagetodolist.fromJson(e)).toList();
  
  setState(() {});
}
// --------------------- //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List 검색'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                InsertImagetodolist()
                )!.then((value) => getJSONData());
            }, 
            icon: Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: SizedBox(
        child: Center(
          child: data.isEmpty
          ? Text("데이터가 없습니다.", textAlign: TextAlign.center,)
          : ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final todolist = data[index];
              return Slidable(
                endActionPane: ActionPane(
                  motion: BehindMotion(), 
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                      label: "삭제",
                      onPressed: (context) {
                        int seq = todolist.seq; 
                        imagetodolistDelete(seq);
                        getJSONData();
                      },
                    )
                  ],
                ),
                child: Card(
                  child: Row(
                    children: [
                      Image.asset(todolist.image,
                      width: 100,
                      height: 100,
                      ),
                      Text(todolist.contents),
                      Text(' / ${todolist.insertdate}')
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
// ---------------------------- //
imagetodolistDelete(int seq)async{
  try{
    final url = Uri.parse('http://127.0.0.1:8000/delete');
    final response = await http.post(
      url,
      headers: {'Content-Type':'application/json'},
      body: json.encode({'seq' : seq}),
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
// ---------------------------------------- //
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