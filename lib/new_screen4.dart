import 'package:flutter/material.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({Key? key}) : super(key: key);

  @override
  _NotiScreenState createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          top: true,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('건너뛰기', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
            Icon(Icons.alarm_rounded),
            Text("모임에 '꼭' 필요한 것만,\n 구지연님이 잊지 않도록 알려드려요!",
                textAlign: TextAlign.center),
            Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(children: [
                        Icon(Icons.archive_outlined),
                        Text('ㅣ냐얼키ㅏ눌;ㅑㄴ')
                      ])
                    ])))
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(
              onPressed: () {},
              child: Container(
                  width: double.infinity,
                  child:
                  Text("필수알림 동의하기",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,),
                  )
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ), // side: BorderSide(width: 2, color: Colors.green         ),       ),
              )
          ),
        )
    );
  }
}
