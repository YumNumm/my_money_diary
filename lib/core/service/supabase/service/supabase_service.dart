import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

part 'supabase_service.g.dart';

@Riverpod(keepAlive: true)
FrappuccinnoService frappuccinnoService(FrappuccinnoServiceRef ref) =>
    FrappuccinnoService(ref.watch(supabaseClientProvider));

class FrappuccinnoService {
  FrappuccinnoService(this._client);
  final SupabaseClient _client;
}
