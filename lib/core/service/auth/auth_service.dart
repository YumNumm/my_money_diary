import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_service.g.dart';

@Riverpod(dependencies: [supabaseClient])
AuthService authService(AuthServiceRef ref) => AuthService(
      auth: ref.watch(supabaseClientProvider).auth,
    );

class AuthService {
  AuthService({required this.auth});

  final GoTrueClient auth;

  String? validator(String? value) => switch (value) {
        final String? value when value == null || value.isEmpty =>
          'メールアドレスを入力してください',
        final String value when !EmailValidator.validate(value) =>
          'メールアドレスの形式が正しくありません',
        _ => null,
      };

  Future<Result<void, Exception>> logIn(String email) async {
    try {
      await auth.signInWithOtp(
        email: email,
        emailRedirectTo:
            kIsWeb ? null : 'net.yumnumm.MoneyDiary://login-callback',
      );
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Result<void, Exception>> signOut() async {
    try {
      await auth.signOut();
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Session? get currentSession => auth.currentSession;

  Stream<AuthState> get onAuthStateChange => auth.onAuthStateChange;
}
