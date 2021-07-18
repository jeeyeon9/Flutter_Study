import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  String name;

  Secondscreen(this.name);


  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {

  Widget MakeCustomCloumn(IconData iconData,String text){
    return Column(
      children: [
        Icon(iconData, size: 30,color:Colors.deepPurple,),
        Text(text)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title: Text('마이페이지',
        style:TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon : Icon(Icons.arrow_back,color:Colors.black)

        )

      ),
      body : Column(
        children:[
          Container(height: 30,),
          Text('구지연님 반갑습니다.'),
          Container(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MakeCustomCloumn(Icons.people, '참여내역'),
              MakeCustomCloumn(Icons.people, '어쩌고'),
              MakeCustomCloumn(Icons.people, '저쩌고'),
              MakeCustomCloumn(Icons.people, '아리랑'),

            ],


          )
        ]

      )

    );
  }

}
