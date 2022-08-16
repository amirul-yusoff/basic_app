import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  String _value = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JTKMS Daily Record'),
        ),
        body: Center(
            child: Column(
          children: [
            const Text('Please Enter Your Name'),
            TextField(controller: textEditingController),
            ElevatedButton(onPressed: _pressMe, child: const Text('Press Me')),
            Text(_value)
          ],
        )),
      ),
    );
  }

  void _pressMe() {
    setState(() {
      _value = textEditingController.text;
      print(_value);
    });
  }
}
