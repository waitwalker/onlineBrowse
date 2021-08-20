
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

  /// 卡片宽高
  double cardWidth = 230.0;
  double cardHeight= 290.0;

  /// 数据源
  List <Map<String, dynamic>> dataSource = [
    {
      "imageString" : "images/full_mark_card_course_icon.png",
      "showedURL" : "www.etiantian.com",
      "title" : "网校满分课程",
      "subTitle" : "满分卡用户",
      "openedURL" : "https://www.etiantian.com/login.html",
      "background" : Color(0xff39A7FF),
      "shadow" : Color(0x9939A7FF),
    },
    {
      "imageString" : "images/zhiling_course_icon.png",
      "showedURL" : "ai.etiantian.com",
      "title" : "网校智领课程",
      "subTitle" : "智领、智学用户",
      "openedURL" : "https://ai.etiantian.com/",
      "background" : Color(0xffFFB400),
      "shadow" : Color(0x99FFB400),
    },
    {
      "imageString" : "images/digital_school_icon.png",
      "showedURL" : "school-web.ai-classes.com",
      "title" : "数字校园",
      "subTitle" : "教学（爱学）平台用户",
      "openedURL" : "https://school-web.ai-classes.com/elogin/#/",
      "background" : Color(0xff33D775),
      "shadow" : Color(0x9933D775),
    }
  ];

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
            _cardWidget(0),
            Padding(padding: EdgeInsets.only(left: 40)),
            _cardWidget(1),
            Padding(padding: EdgeInsets.only(left: 40)),
            _cardWidget(2),
          ],
        ),
      ),
    );
  }

  ///
  /// @description 卡片组件
  /// @param
  /// @return
  /// @author waitwalker
  /// @time 3/8/21 2:22 PM
  ///
  Widget _cardWidget(int index) {
    Map map = dataSource[index];
    String imageString = map["imageString"];
    String showedURL = map["showedURL"];
    String title = map["title"];
    String subTitle = map["subTitle"];
    String openedURL = map["openedURL"];
    Color backgroundColor = map["background"];
    Color shadow = map["shadow"];
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: cardWidth,
            height: cardHeight,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: shadow,
                    offset: Offset(0, 0),
                    blurRadius: 16.0,
                    spreadRadius: 3.0)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imageString, width: 160, height: 160, fit: BoxFit.fill,),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(showedURL, style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF), fontWeight: FontWeight.w300),),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(title, style: TextStyle(fontSize: 21, color: Color(0xff111111), fontWeight: FontWeight.w300),),
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(subTitle, style: TextStyle(fontSize: 18, color: Color(0xff666666)),),
        ],
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return BrowsePage(initialUrl: openedURL, title: title,);
        }));
      },
    );
  }
}