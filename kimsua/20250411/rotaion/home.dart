import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Property
  late bool _switch;          // Switch 켜짐 꺼진 상태
  late String _lampImage;     //image file name
  late double _lamphight;     //Image Hight
  late double _lampwdith;     // Image width
  late String _buttonName;    //button title
  late bool _lampSizestatus;  // 현재 화면의 Lamp의 크기
  late double _rotation;      //회전각도 



  @override
  void initState() {
    //작은 사진에 
    super.initState();
    _lampImage = "images/lamp_on.png";
    _lampwdith = 150;
    _lamphight=300;
    _buttonName = "image 확대";
    _switch = true;
    _lampSizestatus = false;
    _rotation = 0;
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image 확대 및 축소"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 550,
              child: Center(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(_rotation/360),
                  child: Image.asset(_lampImage,
                  width: _lampwdith,
                  height: _lamphight,
                  ),
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed:() {
                decisionLampSize();
              }, child: Text(_buttonName)),
              Column(
                children: [
                  Text("전구 스위치",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                  Switch(
                    value: _switch, 
                    onChanged:(value) {
                    _switch = value;
                    decisionOnOff();
                  },)
                ],
              )
            ],
          ),
          SizedBox(
            width: 200,
            child: Slider(
            min: 0,
            max: 720,
            value: _rotation, 
            onChanged: (value) {
              _rotation = value;
              setState(() {
                
              });
            },),
          )
          ],
        ),
      ),
    );
  }//build
  //----funciton------
  decisionLampSize(){
    if(_lampSizestatus){
      _lampwdith = 150;
      _lamphight = 300;
      _buttonName = "image 확대";
      _lampSizestatus = false;

    }else{
      _lampwdith = 250;
      _lamphight = 500;
      _buttonName = "image 축소";
      _lampSizestatus = true;

    }
    setState(() {
      
    });
  }
  decisionOnOff(){
    _lampImage = _switch? "images/lamp_on.png":"images/lamp_off.png";
    setState(() {
      
    });
  }
  decisionRotation(){

  }
}