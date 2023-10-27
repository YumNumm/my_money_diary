import 'dart:developer';

import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/service/auth/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'home_drawer_view_model.g.dart';

@riverpod
HomeDrawerViewModel homeDrawerViewModel(HomeDrawerViewModelRef ref) =>
    HomeDrawerViewModel(
      auth: ref.watch(authServiceProvider),
    );

class HomeDrawerViewModel {
  HomeDrawerViewModel({required AuthService auth}) : _auth = auth;
  final AuthService _auth;

  Future<Result<void, Exception>> signOut() async {
    try {
      await _auth.signOut();
      return const Success(null);
    } on AuthException catch (e, st) {
      log('AuthException: $e');
      return Failure(e, st);
    } on Exception catch (e, st) {
      log('Exception: $e');
      return Failure(e, st);
    }
  }
}
