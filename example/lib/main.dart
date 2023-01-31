import 'package:flutter/material.dart';
import 'package:share_all/share_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ShareAll().email('This is body', 'This is subject',
                      'demo@gmail.com', 'text@gmail.com');
                },
                child: const Text('Share on Email')),
            ElevatedButton(
                onPressed: () {
                  ShareAll().text('This is custom message');
                },
                child: const Text('Share Text')),
          ].reverse(),
        ),
      ),
    );
  }
}

extension RverseChildren on List {
  reverse(){
    var list =this;
    return list.reversed.toList();
  }
}