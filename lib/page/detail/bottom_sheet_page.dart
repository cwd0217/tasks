import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  State<BottomSheetPage> createState() => BottomSheetPageState();
}

class BottomSheetPageState extends State<BottomSheetPage> {
  final TextEditingController _controller =
      TextEditingController(); // TextEditingController 객체 생성 TextFild로 글을 작성시 저장필요
  // FocusNode _focusNode = FocusNode();//이것두 autoFocus를 썻기에 사용 불필요

  bool _isFavorit = false;
  bool _showText = false;

  // @override
  // void initState() {
  //   super.initState();
  //   //위젯이 완전히 빌드된 직후 포커스 잡기
  //   //  WidgetsBinding.instance.addPostFrameCallback((_) {
  //   //     FocusScope.of(context).requestFocus(_focusNode);
  //   //   });
  // }

  @override
  void dispose() {
    _controller.dispose();
    // _focusNode.dispose(); // autoFocus를 쓰기때문에 안닫아줘두됨!
    super.dispose();
  }

  void saveToDo() {
    // 입력값이 비었는지 확인
    if (_controller.text.trim().isEmpty) {
      return;
    }
    //  Todo 객체를 생성하거나, 전달할 데이터 준비
    final todo = _controller.text.trim();

    // Navigator.pop()으로 이전 페이지로 값 반환
    Navigator.of(context).pop(todo);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            autofocus: true, // 키보드 위로 바로올려줌
            // focusNode: _focusNode,
            controller: _controller, // 내가 만든 컨트롤러와 연결
            textInputAction: TextInputAction.done, //키보드의 오른쪽 아래 버튼(완료버튼) 바꿔줌
            onSubmitted: (value) {
              saveToDo();
            },
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.short_text_rounded),

                onPressed: () {
                  setState(() {
                    _showText = true;
                  });
                },
              ),
              IconButton(
                icon: Icon(_isFavorit ? Icons.star : Icons.star_border),
                onPressed: () {
                  setState(() {
                    _isFavorit = !_isFavorit;
                  });
                },
              ),
              Spacer(),
              TextButton(
                onPressed: _controller.text.trim().isEmpty ? null : saveToDo,
                child: Text("저장"),
              ),
            ],
          ),
          if (_showText)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "세부정보 추가",
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
                textInputAction: TextInputAction.newline,
              ),
            ),
        ],
      ),
    );
  }
}
