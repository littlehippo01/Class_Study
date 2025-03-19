import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: () => print('object'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                  child: Image.asset(
                    'images/apple.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: () => print('object'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                  child: Image.asset(
                    'images/banana2.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: () => print('object'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                  child: Image.asset(
                    'images/peach.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: () => print('object'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                  child: Image.asset(
                    'images/pineapple.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,100,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,0,50,0),
                  child: OutlinedButton.icon(
                    onPressed: () => print('object'), 
                    label: Text('🍎'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,0,50,0),
                  child: OutlinedButton.icon(
                    onPressed: () => print('object'), 
                    label: Text('🍌'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: OutlinedButton.icon(
                  onPressed: () => print('object'), 
                  label: Text('🍑'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: OutlinedButton.icon(
                  onPressed: () => print('object'), 
                  label: Text('🍍'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}