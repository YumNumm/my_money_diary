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
  final AuthService _auth;

  HomeDrawerViewModel({required AuthService auth}) : _auth = auth;

  Future<Result<void, Exception>> signOut() async {
    try {
      await _auth.signOut();
      return const Success(null);
    } on AuthException catch (e) {
      log('AuthException: $e');
      return Failure(e);
    } on Exception catch (e) {
      log('Exception: $e');
      return Failure(e);
    }
  }
}
