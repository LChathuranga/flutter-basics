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
        brightness: Brightness.dark,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: const Icon(Icons.brightness_auto),
            title: const Text('Brightness'),
            subtitle: const Text('Adjust your Brightness'),
            trailing: const Icon(Icons.menu),
            tileColor: Colors.red,
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.browse_gallery),
            title: const Text('Gallery'),
            subtitle: const Text('Browse your gallery'),
            trailing: const Icon(Icons.menu),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessibility_sharp),
            title: const Text('Brightness'),
            subtitle: const Text('Adjust your Brightness'),
            trailing: const Icon(Icons.menu),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.photo_camera),
            title: const Text('Gallery'),
            subtitle: const Text('Browse your gallery'),
            trailing: const Icon(Icons.menu),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_rounded),
            title: const Text('Brightness'),
            subtitle: const Text('Adjust your Brightness'),
            trailing: const Icon(Icons.menu),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.add_location_alt_rounded),
            title: const Text('Gallery'),
            subtitle: const Text('Browse your gallery'),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.add_box_rounded),
            title: const Text('Brightness'),
            subtitle: const Text('Adjust your Brightness'),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.add_alert_sharp),
            title: const Text('Gallery'),
            subtitle: const Text('Browse your gallery'),
            onTap: (){},
          ),
          const Divider(),
        ],
        // children: [
        //   Container(
        //     height: 200.0,
        //     color: Colors.indigoAccent,
        //   ),
        //   Container(
        //     height: 200.0,
        //      color: Colors.amber,
        //   ),
        //   Container(
        //     height: 200.0,
        //     color: Colors.pink,
        //   ),
        //   Container(
        //     height: 200.0,
        //     color: Colors.white,
        //   ),
        //   Container(
        //     height: 200.0,
        //     color: Colors.cyan,
        //   )
        // ],
      )
    );
  }
}
