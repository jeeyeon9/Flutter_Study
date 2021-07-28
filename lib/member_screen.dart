import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    child: Text('asd'),
                  ),
                  Padding(padding: EdgeInsets.all(20),
                  child : Column(

                  )
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget getMemberInformation(String name, String introduce){
    return getMemberInformation('누구누구', '뭐라고?'
    );

  }

}
