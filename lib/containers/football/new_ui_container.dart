import 'package:flutter/material.dart';
import 'package:just_news/containers/getnews_Server/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Pages/color.dart';
import '../../Styles/Style.dart';

class news_cont extends StatelessWidget
{

  news_cont({required this.articleModel,});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {

    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(left: querywidth/10,right: querywidth/10),
      child: Container(
        height: queryheight/1.6,
        decoration: BoxDecoration
          (
          border: Border.all(width: 1,color: bordercolor),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${articleModel.title}',style: myStyle(color:Colors.black,family: 'RobotoBold',size: 20),maxLines: 2,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,),
              Divider(
                endIndent: 50,
                thickness: 1,
                indent: 50,
                height: 15,
              ),
              SizedBox
                ( height: queryheight/100,)
              ,Container(
                child: AspectRatio(
                  aspectRatio: 13/9, //aspect ratio for Image
                  child: ClipRRect(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox.fromSize(
                        child: Image.network(articleModel.image??'https://media.gettyimages.com/id/1413298300/photo/mohamed-salah-of-liverpool-celebrates-scoring-their-sides-second-goal-during-the-premier.jpg?s=612x612&w=0&k=20&c=Ti06PYZFkEhndpBF5XTR1-fLMjow-S_YTwxIw0ZTzq0=',fit: BoxFit.cover,)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox
                ( height: queryheight/100,),
            Container(
              child: Text('${articleModel.news}',style: myStyle(color:Colors.black,family: 'RobotoBold',size: querywidth/25),maxLines: 5,textAlign: TextAlign.center),
            ),
              SizedBox
                ( height: queryheight/30),
              GestureDetector(
                onTap: (){
                  launch(articleModel.url!);
                },
                child: Container(
                  height: queryheight/20,
                  decoration: BoxDecoration
                    (
                    borderRadius: BorderRadius.circular(50),
                    color: bg1color
                  ),
                      child: Center(child: Text('Click To Read Full Article',style: myStyle(color:Colors.white,family: 'RobotoBold',size: querywidth/30),textAlign: TextAlign.center))
                  ),
                ),
              SizedBox
                ( height: queryheight/30),
            ],
          ),
        ),
      ),
    );
  }

}