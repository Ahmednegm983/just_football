import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_news/Pages/color.dart';
import 'package:just_news/containers/football/news_list_view.dart';
import 'package:just_news/containers/football/uifootball.dart';

import '../../Styles/Style.dart';

class CategoriesView extends StatelessWidget
{
  const CategoriesView({super.key,required this.cat_name});
  final String cat_name;

  @override
  Widget build(BuildContext context) {
    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
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
      backgroundColor: bg1color,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(
            height: queryheight/50,
          ),),
          newslistviewbuilder(category: cat_name,)
        ],
      ),
    );
  }

}