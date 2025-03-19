import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 217, 210, 210),
      // 화면 배경 색

      appBar: AppBar(
        title: Text('올림픽 구기 종목 투표',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        foregroundColor: const Color.fromARGB(255, 206, 214, 218),
        backgroundColor: const Color.fromARGB(255, 23, 22, 22),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
        // body 전체에 padding 을 주었으며 top, bottom 은 배치를 위해 다르게 줌
        child: Center(
          child: Column(
            children: [

              // image 구성 : 2개 row
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 15),
                // image 사이 padding 간격을 15 로 조정
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      // image 사이 padding 간격을 15 로 조정
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/Soccer.png'
                        ),
                        radius: 70,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/Basketball.png'
                      ),
                      radius: 70,
                    )
                        
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                // button 과 거리를 걸리기 위해 bottom 으로  padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      // image 사이 padding 간격을 15 로 조정
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/Baseball.png'
                        ),
                        radius: 70,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/Vollyball.png'
                      ),
                      radius: 70,
                    )
                  ],
                ),
              ),

              // button 구성 : 2개 row
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                // button 상단과 하단 row 간 간격
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                      // button 좌우 간격

                      child: ElevatedButton.icon(
                        onPressed: () => print('Soccer'),
                        icon: Icon(
                          Icons.sports_soccer_outlined,
                          size: 20,
                          color: Colors.white,
                        ),

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 30, 29, 29),
                          foregroundColor: Colors.lightGreenAccent,
                          minimumSize: Size(150, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                            // button style
                          ),
                        ),
                        
                        label: Text(
                          'Soccer'
                        )),
                    ),
                    
                    ElevatedButton.icon(
                      onPressed: () => print('Basketball'),
                      icon: Icon(
                        Icons.sports_basketball_outlined,
                        color: Colors.white
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 30, 29, 29),
                        foregroundColor: const Color.fromARGB(255, 210, 80, 33),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        minimumSize: Size(150, 40),
                      ),

                      label: Text(
                        'Basketball'
                      )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: ElevatedButton.icon(
                      onPressed: () => print('Basetball'),
                      icon: Icon(
                        Icons.sports_baseball_outlined,
                        color: Colors.white,
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 30, 29, 29),
                        foregroundColor: Colors.white,
                        minimumSize: Size(150, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      label: Text(
                        'Basetball'
                      )),
                  ),

                  ElevatedButton.icon(
                    onPressed: () => print('Volleyball'),
                    icon: Icon(
                      Icons.sports_volleyball_outlined,
                      color: Colors.white,
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 30, 29, 29),
                      foregroundColor: Colors.yellowAccent,
                      minimumSize: Size(150, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),

                    label: Text(
                      'Volleyball'
                    )),
                  
                  
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
// 이미지, 아이콘 다 만든 뒤 sizedbox 로 감싸서 padding 한다.