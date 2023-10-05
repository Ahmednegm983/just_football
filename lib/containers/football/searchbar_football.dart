import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_news/containers/football/uifootball.dart';

import '../../Pages/color.dart';
import '../../Styles/Style.dart';
import 'categoriesview.dart';

class search_bar extends StatefulWidget
{
  @override
  State<search_bar> createState() => _search_barState();
}

class _search_barState extends State<search_bar> {

  TextEditingController Search = TextEditingController();
  @override
  Widget build(BuildContext context) {

    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;

    // TODO: implement build
    return  Padding(
      padding: EdgeInsets.only(left: querywidth/10,right: querywidth/10),
      child: TextField
        (
        controller: Search,
        cursorRadius: Radius.circular(50),
        cursorColor: Colors.white,
        style: myStyle(color: colortext,size: 20),
        decoration: InputDecoration
          (
          contentPadding: EdgeInsets.all(querywidth/20),
          border: OutlineInputBorder
            (
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1,color:bordercolor),
          ),
          disabledBorder: OutlineInputBorder
            (
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1,color:bordercolor),
          ),
          enabledBorder: OutlineInputBorder
            (
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1,color:bordercolor),
          ),
          focusedBorder: OutlineInputBorder
            (
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 3,color:bordercolor),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.search_rounded,color: colortext,size: 35,),
            onPressed: ()
            {
              var search=Search.text;
              print(search);
            },
            padding: EdgeInsets.only(right: querywidth/50),
          ),
          hintStyle: TextStyle(color: colortext,fontSize: 20),
          hintText: 'Search',
        ),
      ),
    );
  }
}