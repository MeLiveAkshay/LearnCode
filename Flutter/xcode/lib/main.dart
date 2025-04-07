import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Basic Flutter Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 🔸 Text Widget
            const Text(
              'Hello Akshay 👋',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),

            const SizedBox(height: 20),

            // 🔸 Container Widget
            Container(
              width: 150,
              height: 100,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: const Text(
                'Inside Container',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            // 🔸 Row Widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.deepPurple),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.settings, color: Colors.grey),
              ],
            ),

            const SizedBox(height: 20),

            // 🔸 Stack Widget
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 150, height: 150, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.yellow),
                const Text('Stacked', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),

            const SizedBox(height: 20),

            // 🔸 Image Widget
            Image.network(
              'https://flutter.dev/images/flutter-logo-sharing.png',
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
