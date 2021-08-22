import 'package:flutter/material.dart';
import 'package:timehub_companion/main.dart';
import 'package:timehub_companion/services/supabase.dart';
import 'styles.dart' as styles;

class AccountOverview extends StatelessWidget {
  const AccountOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: styles.grey,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            floating: false,
            backgroundColor: styles.grey,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Account'),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 50,
            ),
            GestureDetector(
              child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: styles.white,
                    size: 30,
                  ),
                  title: Text('Log out',
                      style: TextStyle(color: styles.white, fontSize: 20)),
                  subtitle: Text(
                    'Logs you out of your current session',
                    style: TextStyle(color: styles.white, fontSize: 15),
                  )),
              onTap: () {
                if (signOut() == true) {
                  print('SIGNED OUT');
                  runApp(SignInWrapper());
                }
              },
            )
          ]))
        ]));
  }
}
