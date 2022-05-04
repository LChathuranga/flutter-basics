import 'package:flutter/material.dart';
import 'package:navigations/screens/home_page.dart';

class SecondScreen extends StatelessWidget {

  String txt = '';

  SecondScreen(String text, {Key? key}) : super(key: key){
    this.txt = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, const MyHomePage( title: "My Home Page",));
          }
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: TextStyle(fontSize: 30.0, color: Colors.indigoAccent),
              )
          ],
        ),
      ),
    );
  }
}
