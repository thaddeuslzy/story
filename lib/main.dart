import 'package:flutter/material.dart';
import './pages/Page1.dart';
import './pages/Page2.dart';
import './pages/Page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Story_v1',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // For desktop platforms, the controls will be smaller and closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This is the home page. It is stateful, meaning it has a State object that 
  // contains fields that affect how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  );

  // void _incrementCounter() {
  //   setState(() {
  //     // setState() triggers rerun the build method so that the display can reflect
  //     // updated values. If we changed _counter without calling setState(),
  //     // the build method would not be called, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // build() is rerun every time setState() is called.
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, you can just rebuild anything that needs updating rather
    // than individually change instances of widgets.
    return PageView(
    controller: _controller,
    children: [
      MyPage1Widget(),
      MyPage2Widget(),
      MyPage3Widget(),
    ],
  );
  }
}
