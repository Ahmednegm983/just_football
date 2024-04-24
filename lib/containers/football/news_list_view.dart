import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../getnews_Server/article_model.dart';
import '../getnews_Server/class_getnews_server.dart';
import 'new_ui_container.dart';


class news_list_view extends StatelessWidget {

  final List<ArticleModel> articles;
  news_list_view({super.key, required this.articles,});

  @override
  Widget build(BuildContext context) {
    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;

    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
        (context,index)
        {
          return Padding(
            padding: EdgeInsets.only(bottom: queryheight/50),
            child: news_cont(articleModel: articles[index]),
          );
        }
        )
    );
  }
}