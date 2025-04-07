import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Widgets Demo',
      debugShowCheckedModeBanner: false,
      home: const LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widgets & Responsive UI'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // Padding + Center
          const Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text(
                'Hello Akshay 👋',
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
            ),
          ),

          // Align widget
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text("Right Aligned"),
            ),
          ),

          const SizedBox(height: 10),

          // Responsive Container using MediaQuery
          Container(
            width: boxWidth,
            height: 80,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              '50% Width Container',
              style: TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 20),

          // Row with Expanded widgets
          Row(
            children: [
              Expanded(
                child: Container(height: 60, color: Colors.purple),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(height: 60, color: Colors.orange),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ListView in Expanded
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: List.generate(
                5,
                (index) => Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 10),
                  color: Colors.grey.shade300,
                  child: Text('List Item ${index + 1}'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
