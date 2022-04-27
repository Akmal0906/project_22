import 'package:flutter/material.dart';

class Part6Page extends StatefulWidget {
  const Part6Page({Key? key}) : super(key: key);
  static const String id = 'part6_page';

  @override
  State<Part6Page> createState() => _Part6PageState();
}

class _Part6PageState extends State<Part6Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
_controller=AnimationController(vsync: this,duration: const Duration(milliseconds: 1200),);
_animation=Tween<Offset>(
  begin: Offset.zero,
  end: const Offset(1.5,0.0),
).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SlideTransition(
          position: _animation,
          child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.1),
                        ]
                      )
            ),
            child:  Container(
              height: 300,
              width: 200,
              color: Colors.green,
              padding: const EdgeInsets.all(11),
              child: const FlutterLogo(size: 130.0,),
            ),
          ),



        ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () { _controller.forward(); },
        child: const Icon(Icons.play_arrow),

      ),
      );


  }
}
