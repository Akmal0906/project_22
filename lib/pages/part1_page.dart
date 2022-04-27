import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Part1Page extends StatefulWidget {
  static const String id = 'part1_page';

  const Part1Page({Key? key}) : super(key: key);

  @override
  State<Part1Page> createState() => _Part1PageState();
}

class _Part1PageState extends State<Part1Page> {
  void _androidPhone() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Log out'),
            content: const Text('Are you sure want to logout'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Confirm'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        });
  }
  _iosPhone(){
    showDialog(context: context, builder: (BuildContext context){
      return  CupertinoAlertDialog(
        title: const Text('Log out'),
        content: const Text('are you sure want to log out'),
        actions: [
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Confirm'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Confirm'),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            if(Platform.isAndroid){
             _androidPhone();
            }else if(Platform.isIOS){
              _iosPhone();
            }
          },
          child: const Text('press me'),
        ),
      ),
    );
  }
}
