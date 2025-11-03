import 'package:flutter/material.dart';
import 'package:tasks/page/detail/bottom_sheet_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: AppBar(
        title: Text(
          "지윤's Tasks",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      //body
      body: Container(
        alignment: Alignment.topCenter,

        height: 250,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //[이미지]
            Image.asset("assets/no_todo.webp", width: 100, height: 100),
            SizedBox(height: 12),
            //[첫번째 텍스트]
            Text(
              "아직 할 일이 없음",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            //[두번쨰 텍스트]
            Text(
              "할 일을 추가하고 지윤's Tasks에서\n할 일을 추적하세요.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
      // [floating버튼]
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet( // 현재 화면 위에 새로운 창을 띄워주는 함수
            context: context, // bottomSheet를 어디에 띄울지 알려줌
            isScrollControlled: true,// 바텀 시트가 화면높이의 절반을 차지할수 있도록 해줌
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
          builder:(context){
            return Padding(
              padding: EdgeInsets.only(// 이렇게 넣어줘야지 채팅을 쳤을떄 글 공간이 남음
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child:BottomSheetPage() ,
              ); 
          }
          
          );
        },
        shape: CircleBorder(),
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add, color: Colors.white, size: 24),
      ),
    );
  }
}
