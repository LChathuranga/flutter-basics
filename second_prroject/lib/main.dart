import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi Flutter"),
      ),
      body: Container(
        color: Colors.pink,
        child: const Text('laHIRU cHATHURANGA'),
        // height: 200.0,
        width: double.infinity,
        margin: EdgeInsets.all(20.0),
        // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        padding: EdgeInsets.only(top: 200.0, bottom: 100.0),
        transform: Matrix4.rotationZ(0.1),
        // alignment: Alignment.bottomCenter,
      ),

      );
  }
}
