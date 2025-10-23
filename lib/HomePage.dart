import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "지윤's Tasks",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),//main Container
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column( 
          children: [ 
            //side container
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            //image, text column
                     child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/1091916.png",
            width: 100,
            height: 100,
            ),
            //text1
            Text("아직 할 일이 없음",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            //text2
            Text("할 일을 추가하고 지윤's Tasks에서\n할 일을 추적하세요.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5
                    
                  ),
            ),
            ],
                     )  
            ),
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      shape: CircleBorder(),
      backgroundColor: Colors.redAccent,
      child: Icon(Icons.add,
      color: Colors.white,
      size: 24,
      ),
      ),
    );
  }
}
