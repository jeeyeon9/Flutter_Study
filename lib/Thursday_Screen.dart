import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class thursdayScreen extends StatefulWidget {
  const thursdayScreen({Key? key}) : super(key: key);

  @override
  _thursdayScreenState createState() => _thursdayScreenState();
}

class _thursdayScreenState extends State<thursdayScreen> {

 /* Widget onOutlinedButton(OutlinedButton outlinedButton){
  return OutlinedButton(onPressed: (){}, child: Text('팔로')
      );
}*/
  Widget MakeCustomerRow(String text1,String text2, String text3, OutlinedButtonThemeData outlinedButtonThemeData){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(text1),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text2, style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
            Text(text3)
          ],
        ),
      ),
      OutlinedButton(onPressed: (){}, child: Text("팔로우"))
    ],
  );
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('목요일까지'),),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*MakeCustomerRow("https://search.pstatic.net/common?type=a&size=120x150&quality=95&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2Fportrait%2F202010%2F20201001130749586.jpg",
                    '지수', '안녕난지수',OutlinedButtonThemeData(style: Align.),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://search.pstatic.net/common?type=a&size=120x150&quality=95&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2Fportrait%2F202010%2F20201001130749586.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                  Text('지수', style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
                                  Text('안녕 난 지수야 헬륨가스 먹었더니 이렇게 됐지')
                            ],
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("팔로우",),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
