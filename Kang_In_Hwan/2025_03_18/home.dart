import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 800,
            height: 350,
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,50),
                    child: Text(''),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-3.jpg'),
                    radius: 40,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,100),
                    child: Text(''),
                  ),
                  Row(
                    children: [
                      Text('피카츄'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,0,0),
                        child: Text('Pikachu'),
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,30,0),
                        child: Text(''),
                      ),
                      Text('포켓 몬스터'),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,40,0),
                        child: Text(''),
                      ),
                      Icon(
                        Icons.catching_pokemon
                      ),
                      Text('전기 타입'),
                      Text(''),
                    ],
                  ),
                  Row(
                    children: [                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,40,0),
                        child: Text(''),
                      ),
                      Icon(
                        Icons.catching_pokemon
                      ),
                      Text('전기 타입'),
                    ],
                  ),
                  Row(
                    children: [                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,40,0),
                        child: Text(''),
                      ),
                      Icon(
                        Icons.catching_pokemon
                      ),
                      Text('전기 타입'),
                    ],
                  ),
                  Row(
                    children: [                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,40,0),
                        child: Text(''),
                      ),
                      Icon(
                        Icons.catching_pokemon
                      ),
                      Text('전기 타입'),
                    ],
                  ),
                ],
              ),
            ],
          ),
            ),
            
        ),
      ),
    );
  }
}


