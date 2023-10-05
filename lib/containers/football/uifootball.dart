import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_news/containers/football/categoriesview.dart';
import 'package:just_news/containers/football/searchbar_football.dart';
import 'package:just_news/containers/football/teamcateg_list_view.dart';
import 'package:just_news/containers/getnews_Server/article_model.dart';
import '../../Pages/color.dart';
import '../../Styles/Style.dart';
import '../getnews_Server/article_model.dart';
import '../getnews_Server/class_getnews_server.dart';
import 'news_list_view.dart';

class ui1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;
    TextEditingController Search = TextEditingController();

    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: querywidth/10,right: querywidth/10),
              child: TextField
                (
                controller: Search,
                onSubmitted: (search)
                {
                  if(search==null)
                    {
                      search=='football';
                      print(search);
                    }
                  else if(search!=null)
                  {
                    var goto='football';
                    goto=search;
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CategoriesView(cat_name:goto);
                    }),);
                  print(search);
                  }
                },
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
                    },
                    padding: EdgeInsets.only(right: querywidth/50),
                  ),
                  hintStyle: TextStyle(color: colortext,fontSize: 20),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(
            height: queryheight/50,
          ),)
          ,SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: querywidth/10),
              child: Container(
                decoration: BoxDecoration
                  (
                    color: Colors.transparent
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choose Your',style: myStyle(color: colortext,size: 25),),
                    Text('Favourite Leauges',style: myStyle(color: colortext,size: 25,family: 'Eina'),),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: queryheight/50,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: querywidth/10),
              child: Container
                (
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                height: 150,
                child: teamcate_listview(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: queryheight/50,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 0),
                  child: Text('News',style: myStyle(color: colortext,size: 30),),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: queryheight/50,
            ),
          ),
          newslistviewbuilder(category: 'football',),
        ],
      ),
    );
  }
}




class newslistviewbuilder extends StatefulWidget {
  const newslistviewbuilder({
    super.key, required this.category,
  });
  final String category;
  @override
  State<newslistviewbuilder> createState() => _newslistviewbuilderState();
}

class _newslistviewbuilderState extends State<newslistviewbuilder> {
  bool isloading=true;
  var future;
  @override
  void initState() {
    super.initState();
    future=Getnews(Dio()).getnews(
      categories: widget.category
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:future,
        builder: (context,snapshot){
          if(snapshot.hasData)
            {
              return news_list_view(
                articles: snapshot.data!,
              );
            }
          else if(snapshot.hasError)
            {
              return SliverToBoxAdapter(child: Center(child: Text('OOPS TRY AGAIN Later !!!',style: myStyle(color: colortext,size: 25),)),);
            }
          else
            {
              return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
            }

    });
  }
}