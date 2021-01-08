import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('App Bar'),
          floating: true,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
              // stretchModes: <StretchMode>[
              //   StretchMode.zoomBackground,
              //   StretchMode.blurBackground,
              //   StretchMode.fadeTitle,
              // ],
              // centerTitle: true,
              title: const Text('Friday'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Today\'s Task'),
              trailing: Icon(Icons.more_vert),
              enabled: true,
              onTap: () { /* react to the tile being tapped */ }
            ),
          ),
            childCount: 15,
          ),
        )
      ]
    );
  }
}
