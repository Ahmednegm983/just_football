import 'package:flutter/material.dart';
import 'package:just_news/containers/football/categoriesview.dart';
import 'package:just_news/containers/football/teamcateg_model.dart';
import '../../Pages/color.dart';
import '../../Styles/Style.dart';

class teamcat extends StatelessWidget
{
  const teamcat({super.key, required this.categories,});
   final team_cat_model categories;
  @override
  Widget build(BuildContext context) {

    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
        {
          return CategoriesView(cat_name: categories.text,);
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
          width: MediaQuery.of(context).size.width*0.39,
          height: 150,
          decoration: BoxDecoration
            (
            border: Border.all(width: 2,color: bordercolor),
            borderRadius: BorderRadius.circular(35),
            color: bg2color,
          ),
          child: Column(
            children: [
              SizedBox(
                height: queryheight/50,
              ),
              Image(image: AssetImage(categories.pic??'assets/mainuipics/pagenot.png'),width: 70,),
              SizedBox(
                height: queryheight/75,
              ),
              Text(categories.text,style: myStyle(family: 'GilroyBold',color: Colors.white,size: 15),textAlign: TextAlign.center,),
              SizedBox(
                height: queryheight/90,
              ),
            ],
          ),
        ),
    );
  }

}