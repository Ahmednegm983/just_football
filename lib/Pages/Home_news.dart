import 'package:flutter/material.dart';
import 'package:just_news/Styles/Style.dart';
import 'package:just_news/containers/football/new_ui_container.dart';
import 'package:just_news/containers/football/teamscateg_ui.dart';
import 'package:just_news/containers/football/uifootball.dart';
import '../containers/main_home/main_news_coteg_listview.dart';
import '../containers/football/news_list_view.dart';
import '../containers/football/teamcateg_list_view.dart';
import 'color.dart';
class home_news extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bg1color,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Just",style: myStyle(size: 25,family: 'GilroyLight'),),
            Text(' FootBall',style: myStyle(size: 25,family: 'GilroyBold'),)
          ],
        )
      ),
      body: ui1(),
    );
  }

}
























// Padding(
// padding:EdgeInsets.only(left:10),
// child: Container
// (
// height: 150,
// child: teamcate_listview(),
// ),
// ),






// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(
// height: queryheight/50,
// ),
// Padding(
// padding: EdgeInsets.only(left: querywidth/10),
// child: Container(
// decoration: BoxDecoration
// (
// color: Colors.transparent
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Choose Your',style: myStyle(color: colortext,size: 25),),
// Text('Favourite Leauges',style: myStyle(color: colortext,size: 25,family: 'Eina'),),
// ],
// ),
// ),
// ),
//
// SizedBox(
// height: queryheight/50,
// ),
//
// Padding(
// padding: EdgeInsets.only(left: querywidth/10),
// child: Container
// (
// decoration: BoxDecoration(
// color: Colors.transparent
// ),
// height: 150,
// child: teamcate_listview(),
// ),
// ),
//
// SizedBox(
// height: queryheight/50,
// ),
//
// Expanded(child: news_list_view()),
// ],
// ),