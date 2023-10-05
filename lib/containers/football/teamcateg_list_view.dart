import 'package:flutter/material.dart';
import 'package:just_news/containers/football/teamcateg_model.dart';
import 'package:just_news/containers/football/teamscateg_ui.dart';

class teamcate_listview extends StatelessWidget
{

   const teamcate_listview
  ({

    super.key,
});

  final List<team_cat_model> categories =const [

    team_cat_model(text: 'football',pic: 'assets/Pics/teams/all.png'),
    team_cat_model(text: 'PremierLeague',pic: 'assets/Pics/teams/EnglishPremierLeague.png'),
    team_cat_model(text: 'Bundesliga',pic: 'assets/Pics/teams/Bundesliga.png'),
    team_cat_model(text: 'LaLiga',pic: 'assets/Pics/teams/laliga.png'),
    team_cat_model(text: 'SerieA',pic: 'assets/Pics/teams/SerieA.png'),
    team_cat_model(text: 'Ligue1',pic: 'assets/Pics/teams/ligue1.png'),
    team_cat_model(text: 'Eredivisie',pic: 'assets/Pics/teams/Eredivisie.png'),
    team_cat_model(text: 'Brasileiro',pic: 'assets/Pics/teams/BRASILEIRO.png'),
    team_cat_model(text: 'LigaPortugal',pic: 'assets/Pics/teams/premierlega.png'),
    team_cat_model(text: 'LigaMX',pic: 'assets/Pics/teams/MXlogo.png'),
    team_cat_model(text: 'RussianPremierLeague',pic: 'assets/Pics/teams/Russian_Premier_League.png'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index)
      {
        return teamcat(categories: categories[index]);
      },
    );
  }

}