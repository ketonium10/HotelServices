import 'package:flutter/material.dart';
import 'package:project_1/Screens/Categories.dart' as Categories;
import 'package:project_1/example1.dart' as example1;

void main()=> runApp( new MaterialApp(
  home: MyApp(),
));


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: new Text('HOUSE KEEPER'),
          centerTitle: true,
        ),
        body: Categories.Categories()
      );
  }
}