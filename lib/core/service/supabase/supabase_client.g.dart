// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseClientHash() => r'4913ef00d0a39615e53db014c5cd7d6e8c18d5c0';

/// See also [supabaseClient].
@ProviderFor(supabaseClient)
final supabaseClientProvider = Provider<SupabaseClient>.internal(
  supabaseClient,
  name: r'supabaseClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseClientHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef SupabaseClientRef = ProviderRef<SupabaseClient>;
String _$supabaseCurrentUserHash() =>
    r'71d6b5a86cd770ded8078863cb60d987b4d3cda8';

/// See also [SupabaseCurrentUser].
@ProviderFor(SupabaseCurrentUser)
final supabaseCurrentUserProvider =
    AutoDisposeNotifierProvider<SupabaseCurrentUser, User?>.internal(
  SupabaseCurrentUser.new,
  name: r'supabaseCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseCurrentUserHash,
  dependencies: <ProviderOrFamily>[supabaseClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseClientProvider,
    ...?supabaseClientProvider.allTransitiveDependencies
  },
);

typedef _$SupabaseCurrentUser = AutoDisposeNotifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
