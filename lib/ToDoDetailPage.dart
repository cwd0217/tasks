import 'package:flutter/material.dart';

class Tododetailpage extends StatelessWidget {
  const Tododetailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child:
       
      Container(

        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16),

        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(12),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(Icons.circle
            ),
            SizedBox(width: 12),
             Expanded(child: Text("할 일 1")),
             
            Icon(Icons.star),
             
            
              
            
          ],
        ),
      )),
    );
  }
}