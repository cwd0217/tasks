import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget{
  @override
  State<BottomSheetPage> createState() => BottomSheetPageState();

}

class BottomSheetPageState extends State<BottomSheetPage>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12,),
      child: TextField(
        textInputAction: TextInputAction.go,
      ),
    );
  }

}