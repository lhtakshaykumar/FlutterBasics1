import 'package:flutter/material.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/detail_page.dart';
import 'package:app/providers/item_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/detail': (context) => DetailPage(),
        },
      ),
    );
  }
}