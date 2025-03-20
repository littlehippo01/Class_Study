import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 213, 223),
      appBar: AppBar(
        title: Text("제일 이상형인 분을 선택하세요",
         
        style: TextStyle(
          fontSize: 21,
          
        ),
        
        ),
         foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 237, 127, 164),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
        
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              
              
              children: [
                
                // 연예인 사진이 올라갈 곳 
                SizedBox(
                  
                  height: 340,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 229, 181),
                        border: Border(
                        left: BorderSide(color: const Color.fromARGB(255, 235, 246, 172), width: 0),
                        right: BorderSide(color: const Color.fromARGB(255, 241, 253, 178), width: 0),
                        top: BorderSide(color: const Color.fromARGB(255, 206, 163, 35), width: 4),
                        bottom: BorderSide(color: const Color.fromARGB(255, 195, 150, 44), width: 4),
            ),
          ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                'images/jang.jpg'
                                 ),
                                  radius: 70,
                                                  
                                                      ),
                            ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: CircleAvatar(
                                                                 backgroundImage: AssetImage(
                                                                 'images/iu.jpg'
                                                                  ),
                                                                   radius: 70,
                                                         
                                                             ),
                                   ),
                          
                    
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CircleAvatar(
                                backgroundImage: AssetImage(
                                'images/ka.jpg'
                                 ),
                                  radius: 70,
                                                 
                                                     ),
                           ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                                                  backgroundImage: AssetImage(
                                                                  'images/park.jpg'
                                                                   ),
                                                                    radius: 70,
                                                          
                                                              ),
                                    ),
                          
                    
                          ],
                        ),
                    
                      ],
                    ),
                  ),
                ),
                // 버튼이 들어갈 컬럼
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                                          onPressed: () => print("UP 장원영") , 
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: const Color.fromARGB(255, 237, 251, 255),
                                          backgroundColor: const Color.fromARGB(255, 121, 33, 243),
                                          minimumSize: Size(130, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20), // 사각 꼭지점을 기준으로 반지름 만큼을 중요주는 명령어
                                            // 숫자가 커질수록 부드럽게 바뀜
                                          ),
                                        ),
                                        
                                        child: Text("장원영",
                                         style: TextStyle(
                      fontSize: 30,
                      
                    ),
                                            
                                        ),
                                      ),
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => print("Elevated Button") , 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.yellow,
                    backgroundColor: const Color.fromARGB(255, 243, 149, 33),
                    minimumSize: Size(130, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // 사각 꼭지점을 기준으로 반지름 만큼을 중요주는 명령어
                      // 숫자가 커질수록 부드럽게 바뀜
                    ),
                  ),
                  child: Text("카리나",
                   style: TextStyle(
                      fontSize: 30,
                      
                    ),
                      
                  ),
                ),
              ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                                          onPressed: () => print("UP IU") , 
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.yellow,
                                          minimumSize: Size(130, 50),
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20), // 사각 꼭지점을 기준으로 반지름 만큼을 중요주는 명령어
                                            // 숫자가 커질수록 부드럽게 바뀜
                                          ),
                                        ),
                                        child: Text("아이유",
                                         style: TextStyle(
                      fontSize: 30,
                      
                    ),
                                            
                                        ),
                                      ),
                      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
                    onPressed: () => print("UP 박보영") , 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color.fromARGB(255, 255, 146, 180),
                    minimumSize: Size(130, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // 사각 꼭지점을 기준으로 반지름 만큼을 중요주는 명령어
                      // 숫자가 커질수록 부드럽게 바뀜
                    ),
                  ),
                  child: Text("박보영",
                    style: TextStyle(
                      fontSize: 30,
                      
                    ),
                      
                  ),
                ),
        ),
                    ],
                  ),
                ],
              )
              ],
            ),
        
        
          ],
        ),
      ),
    );
  }
}