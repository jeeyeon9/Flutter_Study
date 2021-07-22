import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_screen2.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text('쪽지',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop(); /*pop을 쓰면 페이지를 빼는 것*/
          },
            icon : Icon(Icons.arrow_back,color: Colors.white)
        ),
          /*leading은 왼쪽에 위치*/
        actions: [ Padding
            (padding: EdgeInsets.only(right: 1),/*패딩값주기*/
              child: IconButton(
                  color:Colors.purple,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Secondscreen("")));

                  }, icon : Icon(Icons.archive_outlined,color: Colors.white)
              )
            )
          ],/*actions는 오른쪽에 위치함. 연결페이지로 넘어가기 위해 push MPR을 사용한다*/
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email,size:70,color: Color(0xff999696)),
            Container(height: 10),
            Text('받은 쪽지가 없습니다',style: TextStyle(fontSize: 20,color:Color(0xff999696))
                )
          ]
        ),
      )

    );
  }
}
