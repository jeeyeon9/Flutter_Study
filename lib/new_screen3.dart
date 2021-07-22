import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homeworkone extends StatefulWidget {
  String name;
  Homeworkone(this.name);

  @override
  _HomeworkoneState createState() => _HomeworkoneState();
}

class _HomeworkoneState extends State<Homeworkone> {

  Widget MakeCustomCloumn(IconData iconData,String text){
    return Column(
      children: [
        Icon(iconData, size: 30,color:Colors.deepPurple),
        Text(text)
      ],
    );
  }
  Widget MakeCustomRow(IconData iconData,String text){
    return Row(
      children: [
        Icon(iconData, size:50),
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
                Text("모임에 '꼭' 필요한 것만,\n 구지연님이 잊지 않도록 알려드려요!",
                    style: TextStyle(fontSize: 20,color:Colors.black)
                ),
                Container(decoration: ,color: Colors.grey,
                  child : (
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MakeCustomRow(Icons.people, '참여내역'),
                  MakeCustomRow(Icons.people, '참여내역'),
                  MakeCustomRow(Icons.people, '참여내역'),
                  MakeCustomRow(Icons.people, '참여내역')
                ]
                )
                  )
                )
              ]
          )
      )
    );
}
}