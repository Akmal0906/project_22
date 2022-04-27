import 'package:flutter/material.dart';
import 'package:project_22/pages/dart4_page.dart';
import 'package:project_22/pages/part1_page.dart';
import 'package:project_22/pages/part2_page.dart';
import 'package:project_22/pages/part3_page.dart';
import 'package:project_22/pages/part5_page.dart';
import 'package:project_22/pages/part6_page.dart';
import 'package:project_22/pages/part7_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Part7Page(),
      routes: {
        Part7Page.id:(context)=>const Part7Page(),
        Part6Page.id:(context)=>const Part6Page(),
        Part5Page.id:(context)=> const Part5Page(),
        Part4Page.id:(context)=>const Part4Page(),
        Part3Page.id:(context)=> const Part3Page(),
        Part2Page.id:(context)=> const Part2Page(),
        Part1Page.id:(context) => const Part1Page(),
      },
    );
  }
}
