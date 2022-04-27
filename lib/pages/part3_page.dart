import 'package:flutter/material.dart';

class Part3Page extends StatefulWidget {
  const Part3Page({Key? key}) : super(key: key);
  static const String id = 'part3_page';

  @override
  State<Part3Page> createState() => _Part3PageState();
}

class _Part3PageState extends State<Part3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            children: [
              _item(
                  title: const Text('First'),
                  image: 'assets/images/ic_image2.jpg'),
              _item(
                  title: const Text('First'),
                  image: 'assets/images/ic_image3.jpg'),
              _item(
                  title: const Text('First'),
                  image: 'assets/images/ic_image4.jpg'),
              _item(
                  title: const Text('First'),
                  image: 'assets/images/ic_image5.jpg'),
              _item(
                  title: const Text('First'),
                  image: 'assets/images/ic_image6.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _item({title, image}) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            height: 150,
            width: 150,
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          title,
        ],
      ),
    );
  }
}
