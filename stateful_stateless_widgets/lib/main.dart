import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'screens/home_Page.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => const App(), // Wrap your app
  ),
);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Flutter stateless and full",
      home: const HomePage(),
    );
  }
}



// state less don't work for changing


// class HomePage extends StatelessWidget {
//
//   int count = 0;
//
//   void increment(){
//     count++;
//     print(count);
//   }
//
//   HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('stateless and full'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('You have pushed : ', style: TextStyle(fontSize: 25.0),),
//             Text(count.toString(), style: Theme.of(context).textTheme.displaySmall)
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: increment,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

