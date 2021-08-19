import 'package:flutter/material.dart';
import 'package:timehub_companion/objects/styles.dart' as styles;
//import 'package:timehub_companion/objects/sign_up.dart';
import 'package:timehub_companion/services/supabase.dart';

void main() async {
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Companion',
      home: MyHomePage(title: 'Companion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            floating: false,
            backgroundColor: styles.grey,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Companion'),
            ),
          ),
        ],
      ),
    );
  }
}
