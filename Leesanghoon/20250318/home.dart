import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        title: Text('영웅 Card'),
        backgroundColor: Colors.deepOrange[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Lee.jpg'),
                  radius: 80,
                ),
              ),
              Divider(color: Colors.grey, thickness: 1, height: 1),
              Row(
                children: [
                  Text(
                    '성웅',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '이순신 장군',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '전적',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '62전 62승',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('옥포해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('사천포해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('당포해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('한산도해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('부산포해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('명량해전'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    child: Icon(
                      Icons.check_circle_outline
                    ),
                  ),
                  Text('노량해전'),
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/turtle.gif'),
                backgroundColor: Colors.amber[700],
                radius: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}