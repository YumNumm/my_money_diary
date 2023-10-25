import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

part 'supabase_client.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
SupabaseClient supabaseClient(SupabaseClientRef ref) =>
    Supabase.instance.client;

@Riverpod(dependencies: [supabaseClient])
class SupabaseCurrentUser extends _$SupabaseCurrentUser {
  @override
  User? build() {
    final client = ref.watch(supabaseClientProvider);
    client.auth.onAuthStateChange.listen((_) => ref.invalidateSelf());
    return client.auth.currentUser;
  }
}
