import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,

      appBar: AppBar(
        title: Text(
          '영웅 Card',
          style: TextStyle(
            fontWeight: FontWeight.bold
          )
          ),
      
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                'images/Lee.jpg'
              ),
              radius: 70,
            ),
            Divider(color: Colors.black),
            
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('성웅',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text('이순신 장군',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ) ,),
                    ),
                    Text('전적',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text('62전 62승',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('목포해전')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('사천포해전')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('당포해전')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('한산도대첩')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('부산포해전')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('명량해전')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.check_circle_outline
                          ),
                        ),
                        Text('노량해전')
                      ],
                    ),
                    
                    
                  ],
                ),
              ],
            ),
            
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/turtle.gif'
                  ),
                  radius: 40,
                  backgroundColor: Colors.orange,
                )
            
            ],
          ),
      ),
      
      
      
      
      
    );
  }
}
