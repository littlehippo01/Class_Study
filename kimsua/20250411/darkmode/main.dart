import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Property
  //Theme 모드에 맞게 나옴
  ThemeMode _themeMode = ThemeMode.system;
  _changeThemeMode(ThemeMode themeMode){
    _themeMode = themeMode;
    setState(() {
      
    });
  }
  static const seedColor = Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: _themeMode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: seedColor,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: seedColor,
      ),
      //형식에 맞추서 넣어 주기
      home:  Home(onChangeTheme: _changeThemeMode),
      //const제거 
    );
  }
}
