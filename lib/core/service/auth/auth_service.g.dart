// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authServiceHash() => r'7eaef299757c872f1a173aa127b879055193965f';

/// See also [authService].
@ProviderFor(authService)
final authServiceProvider = AutoDisposeProvider<AuthService>.internal(
  authService,
  name: r'authServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authServiceHash,
  dependencies: <ProviderOrFamily>[supabaseClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseClientProvider,
    ...?supabaseClientProvider.allTransitiveDependencies
  },
);

typedef AuthServiceRef = AutoDisposeProviderRef<AuthService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
