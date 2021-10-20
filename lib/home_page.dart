import 'package:flutter/material.dart';
import 'circle_buble.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Circle Bubble',style: TextStyle(color: Colors.blue),),
      ),
      body: const SafeArea(
        child: CircleBubble()
      ),
    );
  }
}
