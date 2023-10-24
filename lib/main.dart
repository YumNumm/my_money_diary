import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_money_diary/core/app.dart';
import 'package:my_money_diary/core/env/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  final (supabaseUrl, supabaseAnonKey) = (Env.supabaseUrl, Env.supabaseAnonKey);
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
    debug: kDebugMode,
  );

  final container = ProviderContainer(
    overrides: [],
  );

  runApp(
    ProviderScope(
      parent: container,
      child: const App(),
    ),
  );
}
