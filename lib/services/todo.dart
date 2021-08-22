import 'package:supabase/supabase.dart';
//import 'package:postgrest/postgrest.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';

toDoGetter() {
  final response = SupabaseEventTypes.all.name();

  print(response);
}
