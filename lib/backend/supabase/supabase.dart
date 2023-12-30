import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://obzsnpzrjtzlxaivupqa.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9ienNucHpyanR6bHhhaXZ1cHFhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkxNjg2MTQsImV4cCI6MjAxNDc0NDYxNH0.l7W3lW0scPXFtZJEcIuB-th58OkRR3I3Yb5GC8WjQ6E';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
