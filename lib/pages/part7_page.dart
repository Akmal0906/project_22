import 'package:flutter/material.dart';

class Part7Page extends StatefulWidget {
  const Part7Page({Key? key}) : super(key: key);
  static const String id = 'part7_page';

  @override
  State<Part7Page> createState() => _Part7PageState();
}

class _Part7PageState extends State<Part7Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1200),);
    _animation = Tween(
      begin: 100.0,
      end: 150.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0, 1, curve: Curves.elasticIn)))
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat(reverse: true);
        }
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx, ch) =>
              Container(
                margin: EdgeInsets.only(top: _animation.value),

                height: 150.0,
                width: 150.0,
                child: Image.asset('assets/images/ic_image11.png'),
              ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}