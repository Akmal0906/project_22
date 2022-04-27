import 'package:flutter/material.dart';
class Part2Page extends StatefulWidget {
  const Part2Page({Key? key}) : super(key: key);
static const String id='part2_page';
  @override
  State<Part2Page> createState() => _Part2PageState();
}

class _Part2PageState extends State<Part2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: const Text('Flutter course'),
      ),
      body: const Center(
        child: Text('PDP online'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              color: Colors.lightBlueAccent,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('App Name'),
                  Text('part1@gmail.com'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
