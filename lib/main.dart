import 'package:fllutter_youtube/pages/init_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouApp',
      debugShowCheckedModeBanner: false,
      home: initPage(),
    );
  }
}
