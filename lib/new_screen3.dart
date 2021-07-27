import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homeworkone extends StatefulWidget {
  String name;
  Homeworkone(this.name);

  @override
  _HomeworkoneState createState() => _HomeworkoneState();
}

class _HomeworkoneState extends State<Homeworkone> {

 /* Widget Image{
    return Center(
  child:Image.asset('images/'))
}*/

  Widget MakeCustomCloumn(IconData iconData,String text){
    return Column(
      children: [
        Icon(iconData, size: 40,color:Colors.deepPurple),
        Text(text)
      ],
    );
  }
  Widget MakeCustomRow(IconData iconData,String text){
    return Row(
      children: [
        Image.asset('images/'),
        Icon(iconData, size:40),
        Text(text)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
            actions:[
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child :
                  Text('건너뛰기', style: TextStyle(color:Colors.grey,fontSize: 15))
            )]
        ),
      body: Center(
          child : Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // Image.asset('images/Ghost.png'),

              // : [Image.asset('images/Robot.png]')]),
                Text("모임에 '꼭' 필요한 것만,\n 구지연님이 잊지 않도록 알려드려요!",
                  textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26,color:Colors.black,
                    fontWeight: FontWeight.bold),
                ),
                Container(height: 50),
                Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child : (
                     Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                        MakeCustomRow(Icons.people, '모임 일정 안내 및 필수 공지'),
                        MakeCustomRow(Icons.people, '선착순 마감 소셜링 알림'),
                        MakeCustomRow(Icons.people, '모임에 함께 할 친구 소식')
                       ]
                     )
                    )
                ),
          Container(
              height: 40),

                Text("광고성 정보 알림 수신은 [마이페이지 > 알림설정]에서\n언제든지 변경하실 수 있습니다.",
                    textAlign: TextAlign.center),

                /*TextButton(onPressed: (){},
                    child:
                    Text('필수알림 동의하기',textAlign: TextAlign.center,
                        style:TextStyle(color: Colors.white,fontSize: 18))
                ),*/
                Container(
                  height: 30,
                  width: 250,
                  margin: EdgeInsets.only(top:120),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:(
                      Text("필수알림 동의하기",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      )
                  ),
                ),
              ]
          )
      )
    );
}
}