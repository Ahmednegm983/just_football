import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:just_news/Pages/Home_news.dart';

import 'containers/getnews_Server/class_getnews_server.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_news(),
    );
  }
}

