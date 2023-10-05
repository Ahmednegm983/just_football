import 'package:flutter/material.dart';
import 'package:just_news/containers/main_home/main_news_coteg_listview.dart';
import 'package:just_news/containers/main_home/new_model_cat.dart';
import 'package:just_news/containers/football/news_list_view.dart';

import '../../Styles/Style.dart';

class new_select_categ extends StatelessWidget
{
  const new_select_categ({super.key, required this.categ});
  final news_cat_model categ;
  @override
  Widget build(BuildContext context) {
    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;
    // TODO: implement build
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(bottom: queryheight/50),
        child: Center(
            child:
            Container(
              alignment: Alignment.center,
              width: querywidth/1.3,
              height: queryheight/5.5,
              decoration: BoxDecoration
                (
                border: Border.all(width: 2,color: Colors.black),
                image: DecorationImage(
                    image: AssetImage(categ.pic),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)
                ),
                // border: Border.all(color:bordercolor,width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(categ.title,style: myStyle(color: Colors.white,size: 30,family: 'GilroyBold'),),
            )
        ),
      ),
    );
  }

}