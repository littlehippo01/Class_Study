import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        title: Text('영웅 Card'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/Lee.jpg'),
              radius: 60,
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Text('성웅',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Text('이순신 장군',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Text('전적',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Text('62전 62승',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('옥포해전'),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('사천포해전'),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('당포해전'),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('한산도대첩'),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('부산포해전'),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('명량해전'),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text('노량해전'),
                )
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/turtle.gif'),
              radius: 30,
              backgroundColor: Colors.amber[700],
            )
          ],
        ),
      ),
    );
  }
}