import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //get or set data inside the text field
  TextEditingController first = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //get and set data inside he text field
    first.text = 'Lahiru';
    String inputTxt = first.text;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.text,
          controller: first,
          decoration: InputDecoration(
            prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                  Icons.close,
                  color: Colors.white,
              ), onPressed: () {
                first.text = '';
            },
            ),
            border: InputBorder.none,
            filled: true,
            hintText: 'search...',
            hintStyle: const TextStyle(color: Colors.white70),
          ),
        )
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                // obscureText: true,
                cursorColor: Colors.greenAccent,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 22.0),

                //set controller to set and get data
                // controller: first,

                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search )
                ),
                onChanged: (text){
                  print(text);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                // obscureText: true,
                style: TextStyle(fontSize: 22.0),
                enabled: false,
                autofocus: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                // obscureText: true,
                style: const TextStyle(fontSize: 22.0),
                onSubmitted: (text){
                  print(text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
