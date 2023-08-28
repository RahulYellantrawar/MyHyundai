import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomContainerScreen(),
    );
  }
}

class BottomContainerScreen extends StatefulWidget {
  @override
  _BottomContainerScreenState createState() => _BottomContainerScreenState();
}

class _BottomContainerScreenState extends State<BottomContainerScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Container Swipe'),
      ),
      body: Stack(
        children: [
          // Your main content here
          Positioned.fill(
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                setState(() {
                  // Update the isExpanded based on the drag position
                  isExpanded = details.localPosition.dy >
                      100; // You can adjust this threshold
                });
              },
              onVerticalDragEnd: (details) {
                setState(() {
                  // Snap back the container if not swiped enough
                  if (!isExpanded) {
                    isExpanded = false;
                  }
                });
              },
              child: Container(
                color: Colors.transparent, // Make sure this is transparent
              ),
            ),
          ),
          // Your expanded container
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            bottom: isExpanded ? 0 : -200, // Adjust this value
            left: 0,
            right: 0,
            height: 200, // Adjust this value
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Drag me up!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
