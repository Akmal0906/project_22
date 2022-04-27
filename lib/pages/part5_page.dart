import 'package:flutter/material.dart';

class Part5Page extends StatefulWidget {
  const Part5Page({Key? key}) : super(key: key);
  static const String id = 'part5_page';

  @override
  State<Part5Page> createState() => _Part5PageState();
}

class _Part5PageState extends State<Part5Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _animation = Tween(
      begin: const Size(100, 100),
      end: const Size(150, 150),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx, ch) => Container(
            height: _animation.value.height,
            width: _animation.value.width,
            child: Image.asset('assets/images/ic_image9.png'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
