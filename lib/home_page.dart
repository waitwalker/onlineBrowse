
import 'package:browse/browse_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_orientation/flutter_screen_orientation.dart';

///
/// @description 首页
/// @author waitwalker
/// @time 2/2/21 3:40 PM
///
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  double width = 0.0;
  double height = 0.0;

  @override
  void initState() {

    FlutterScreenOrientation.instance().listenerOrientation((e) {
      if (e == FlutterScreenOrientation.portraitUp) {
        this.setState(() {
          //current = "摄像头在上";
        });
      } else if (e == FlutterScreenOrientation.portraitDown) {
        this.setState(() {
          //current = "摄像头在下";
        });
      } else if (e == FlutterScreenOrientation.landscapeLeft) {
        this.setState(() {
          //current = "摄像头在左";
        });
      } else if (e == FlutterScreenOrientation.landscapeRight) {
        this.setState(() {
          //current = "摄像头在右";
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0xff39A7FF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x9939A7FF),
                            offset: Offset(0, 0),
                            blurRadius: 16.0,
                            spreadRadius: 3.0)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/full_mark_card_course_icon.png", width: 127, height: 127, fit: BoxFit.fill,),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text("www.etiantian.com", style: TextStyle(fontSize: 10, color: Color(0xffFFFFFF)),)
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text("网校满分课程", style: TextStyle(fontSize: 14, color: Color(0xff111111)),),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("满分卡用户", style: TextStyle(fontSize: 10, color: Color(0xff666666)),),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BrowsePage(initialUrl: "https://www.etiantian.com/", title: "网校满分课程",);
                }));
              },
            ),
            Padding(padding: EdgeInsets.only(left: 17)),
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB400),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x99FFB400),
                            offset: Offset(0, 0),
                            blurRadius: 16.0,
                            spreadRadius: 3.0)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/zhiling_course_icon.png", width: 127, height: 127, fit: BoxFit.fill,),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text("ai.etiantian.com", style: TextStyle(fontSize: 10, color: Color(0xffFFFFFF)),)
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text("网校智领课程", style: TextStyle(fontSize: 14, color: Color(0xff111111)),),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("智领、智学用户", style: TextStyle(fontSize: 10, color: Color(0xff666666)),),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BrowsePage(initialUrl: "https://ai.etiantian.com/", title: "网校智领课程",);
                }));
              },
            ),
            Padding(padding: EdgeInsets.only(left: 17)),
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0xff33D775),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x9933D775),
                            offset: Offset(0, 0),
                            blurRadius: 16.0,
                            spreadRadius: 3.0)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/digital_school_icon.png", width: 127, height: 127, fit: BoxFit.fill,),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text("school-web.etiantian.com", style: TextStyle(fontSize: 10, color: Color(0xffFFFFFF)),)
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text("数字校园", style: TextStyle(fontSize: 14, color: Color(0xff111111)),),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("教学（爱学）平台用户", style: TextStyle(fontSize: 10, color: Color(0xff666666)),),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BrowsePage(initialUrl: "https://school-web.etiantian.com/", title: "数字校园",);
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}