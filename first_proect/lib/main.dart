import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          leading: IconButton(
            icon: const Icon(Icons.menu), onPressed: () {  },
          ),
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.search)
            ),
            IconButton(onPressed: () {},
                icon: const Icon(Icons.more_vert)
            )
          ],
          // flexibleSpace: Image.asset(
          //     "assets/back.jpg",
          //     fit: BoxFit.cover
          // ),
          bottom:const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'Tab 1'),
              Tab(icon: Icon(Icons.directions_transit), text: 'Tab 2',),
              Tab(icon: Icon(Icons.directions_bike), text: 'Tab 3',),
            ],
          ),
          elevation: 2.0,
          backgroundColor: Colors.pink,
        ),
        body: TabBarView(
          children: [
            tab1(),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1(){
  return const Center(
    child: Text("Test"),
  );
}
