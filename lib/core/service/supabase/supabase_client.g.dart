// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'supabase_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseClientHash() => r'a423e7187c202c89ed9ab6db50e56f0695ae703d';

/// See also [supabaseClient].
@ProviderFor(supabaseClient)
final supabaseClientProvider = Provider<SupabaseClient>.internal(
  supabaseClient,
  name: r'supabaseClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseClientRef = ProviderRef<SupabaseClient>;
String _$moneyDiaryServiceHash() => r'36f45d1b1fbe387124db02ea7422a5e34d47e8aa';

/// See also [moneyDiaryService].
@ProviderFor(moneyDiaryService)
final moneyDiaryServiceProvider =
    AutoDisposeProvider<MoneyDiaryService>.internal(
  moneyDiaryService,
  name: r'moneyDiaryServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$moneyDiaryServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MoneyDiaryServiceRef = AutoDisposeProviderRef<MoneyDiaryService>;
String _$supabaseCurrentUserHash() =>
    r'59657d82af113147cb394766aaa3516a1191b946';

/// See also [SupabaseCurrentUser].
@ProviderFor(SupabaseCurrentUser)
final supabaseCurrentUserProvider =
    AutoDisposeNotifierProvider<SupabaseCurrentUser, User?>.internal(
  SupabaseCurrentUser.new,
  name: r'supabaseCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseCurrentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SupabaseCurrentUser = AutoDisposeNotifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
