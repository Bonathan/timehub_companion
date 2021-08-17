import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:timehub_companion/private_keys.dart';

void init() {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
    debug: true,
  );
}
