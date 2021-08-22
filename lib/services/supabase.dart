import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:timehub_companion/main.dart';
import 'package:timehub_companion/private_keys.dart';
import 'package:timehub_companion/services/shared_pref.dart';

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
    debug: true,
  );
}

void signIn(String email, String password) async {
  final response = await Supabase.instance.client.auth
      .signIn(email: email, password: password);

  if (response.error != null) {
    print('error in the supabase login');
    print(response.error);
  } else {
    sharedPrefs(email, password);
    print('success');
    runApp(MyApp());
  }
}

void signUp(String email, String password) async {
  final response = await Supabase.instance.client.auth.signUp(email, password);

  if (response.error != null) {
    print('error in the supabase signup');
    print(response.error);
  } else {
    sharedPrefs(email, password);
    print('success');
    runApp(MyApp());
  }
}
