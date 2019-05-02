import 'package:flutter/material.dart';
import 'package:sales_app_ui/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var title = "Sales UI";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      debugShowCheckedModeBanner: false,
      home: Home(
        header: "$title",
      ),
    );
  }
}
