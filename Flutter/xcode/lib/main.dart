import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Demo',
      debugShowCheckedModeBanner: false,
      home: const GestureDemo(),
    );
  }
}

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});
  @override
  State<GestureDemo> createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  String _message = "Try tapping or swiping!";

  void _updateMessage(String text) {
    setState(() {
      _message = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureDetector & InkWell Demo"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          Center(child: Text(_message, style: const TextStyle(fontSize: 20))),

          const SizedBox(height: 30),

          // 🔹 GestureDetector Example
          GestureDetector(
            onTap: () => _updateMessage("🖐️ You tapped the box!"),
            onDoubleTap: () => _updateMessage("👏 Double Tap!"),
            onLongPress: () => _updateMessage("⏳ Long Pressed!"),
            onHorizontalDragEnd: (_) => _updateMessage("➡️ Swiped horizontally!"),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: const Text("GestureDetector Box", style: TextStyle(color: Colors.white)),
            ),
          ),

          const SizedBox(height: 40),

          // 🔸 InkWell Example
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => _updateMessage("✨ InkWell tapped!"),
              splashColor: Colors.purple.withOpacity(0.3),
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text("InkWell Widget"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
