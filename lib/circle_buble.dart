import 'package:flutter/material.dart';

class CircleBubble extends StatefulWidget {
  const CircleBubble({Key? key}) : super(key: key);

  @override
  _CircleBubbleState createState() => _CircleBubbleState();
}

class _CircleBubbleState extends State<CircleBubble> {
  double circleRadius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: circleRadius,
            backgroundColor: Colors.white,
            child: Text(
              'Circle',
              style: TextStyle(
                color: Colors.blue,
                fontSize: circleRadius * 0.4,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 130,
            child: Row(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  child: const Icon(Icons.minimize),
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white,
                  onPressed: (){
                    if(circleRadius > 5.0) {
                      setState(() {
                      circleRadius--;
                    }
                    );
                    }
                  },
                ),
                const Spacer(),
                FloatingActionButton(
                  elevation: 0,
                  child: const Icon(Icons.add),
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white,
                  onPressed: (){
                    if(circleRadius < 100.0) {
                      setState(() {
                        circleRadius++;
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
