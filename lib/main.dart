import 'package:flutter/material.dart';
import './pages/Page1.dart';
import './pages/HomePage.dart';
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
        primarySwatch: Colors.lightBlue,
        // For desktop platforms, the controls will be smaller and closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          decoration: BoxDecoration( 
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.lightBlue]
            ),
          ),
          child:PageView(
            controller: _controller,
            children: [
              MyPage1Widget(),
              HomePage(),
              MyPage3Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
