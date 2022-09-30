import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/widget/ToDO_item.dart';
import 'package:todo_app/widget/searchbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TODO App",
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const Home());
  }
}
