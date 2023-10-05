import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_news/Pages/color.dart';
import 'package:just_news/Styles/Style.dart';

import 'main_page_categ_ui.dart';
import 'new_model_cat.dart';

class mainhome extends StatelessWidget
{
  const mainhome
      ({

    super.key,
  });

  final List<news_cat_model> categ=const[
    news_cat_model(title: 'general',pic: 'assets/mainuipics/general6.jpg'),
    news_cat_model(title: 'Business',pic: 'assets/mainuipics/resize (1).jpeg'),
    news_cat_model(title: 'Entertainment',pic: 'assets/mainuipics/entertainment.jpeg'),
    news_cat_model(title: 'Health',pic: 'assets/mainuipics/health.jpeg'),
    news_cat_model(title: 'Science',pic: 'assets/mainuipics/Science-HERO.jpg'),
    news_cat_model(title: 'Sports',pic: 'assets/mainuipics/sport-congresse.jpg'),
    news_cat_model(title: 'Technology',pic: 'assets/mainuipics/Technology6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var querywidth=MediaQuery.of(context).size.width;
    var queryheight=MediaQuery.of(context).size.height;
    // TODO: implement build
    return ListView.builder(
      itemCount: categ.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index)
      {
        return new_select_categ(categ:categ[index]);
      },
    );
  }
  
}