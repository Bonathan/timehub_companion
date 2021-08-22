import 'package:flutter/material.dart';
import 'package:timehub_companion/objects/sign_in.dart';
import 'package:timehub_companion/objects/styles.dart' as styles;
import 'package:timehub_companion/objects/widgets.dart';
//import 'package:timehub_companion/objects/widgets.dart';
//import 'package:timehub_companion/objects/sign_in.dart';
import 'package:timehub_companion/services/supabase.dart';

void main() async {
  await init();
  runApp(SignIn());
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
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.account_circle_outlined))
            ],
            expandedHeight: 150,
            pinned: true,
            floating: false,
            backgroundColor: styles.grey,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Companion'),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            GestureDetector(
              onTap: () {
                
              },
              child: MenuCard(
                icon: Icons.checklist_outlined,
                text: 'ToDo',
                teaser: 'Your synced to-do list',
              ),
            )
          ]))
        ],
      ),
    );
  }
}
