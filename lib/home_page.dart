import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: AppBar(
        title: Text("지윤's Tasks",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      //body
      body: Container(
        alignment: Alignment.topCenter,
        // width: 400,
        height: 250,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            
            Image.asset("assets/no_todo.webp",
            width: 100,
            height: 100,
            ),
            SizedBox(height: 12),
            Text("아직 할 일이 없음",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 12),
            Text("할 일을 추가하고 지윤's Tasks에서\n할 일을 추적하세요.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
            ),
          ],
        ),
      ),
      
    );
  }
}