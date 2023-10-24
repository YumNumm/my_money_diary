import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_viewmodel.g.dart';

@riverpod
LoginService loginService(LoginServiceRef ref) => LoginService(ref);

class LoginService {
  LoginService(this.ref);

  final LoginServiceRef ref;

  String? validator(String? value) => switch (value) {
        final String? value when value == null || value.isEmpty =>
          "メールアドレスを入力してください",
        final String value when !EmailValidator.validate(value) =>
          "メールアドレスの形式が正しくありません",
        _ => null,
      };

  Future<Result<void, Exception>> signIn(String email) async {
    try {
      final client = ref.read(supabaseClientProvider);
      await client.auth.signInWithOtp(
        email: email.trim(),
        emailRedirectTo:
            kIsWeb ? null : 'net.yumnumm.MoneyDiary://login-callback',
      );
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
