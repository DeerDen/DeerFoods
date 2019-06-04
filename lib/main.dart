import 'package:flutter/material.dart';
import 'FoodDisplayRoute.dart';

void main() => runApp(MyApp());
const String AppName = "UofT Foods";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UofT Foods',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          brightness: Brightness.light),
      home: FoodDisplayRoute(title: 'UofT Foods'),
      debugShowCheckedModeBanner: false,
    );
  }
}
