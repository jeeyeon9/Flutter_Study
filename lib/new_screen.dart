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
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
            icon : Icon(Icons.arrow_back,color: Colors.black,)),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                  color:Color.fromRGBO(100, 200, 120, 1.0),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Secondscreen("")));

                  }, icon : Icon(Icons.arrow_back,color: Color.fromRGBO(100, 200, 120, 1.0),)),
            )
          ],
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email,size:100,color: Color(0xff999696)),
            Text('받은 쪽지가 없습니다.',style: TextStyle(fontSize: 20,color:Color(0xff999696))
                )
          ],
        ),
      )

    );
  }
}
