import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_money_diary/features/error/error_page.dart';
import 'package:my_money_diary/features/home/home_page.dart';
import 'package:my_money_diary/features/ic_reader/ic_reader_screen.dart';
import 'package:my_money_diary/features/login/login_page.dart';
import 'package:my_money_diary/features/splash/splash_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      errorBuilder: (context, state) => const ErrorPage(),
      initialLocation: const SplashRoute().location,
    );

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<ErrorRoute>(path: '/error')
class ErrorRoute extends GoRouteData {
  const ErrorRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const ErrorPage();
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<IcReaderRoute>(path: '/ic-reader')
class IcReaderRoute extends GoRouteData {
  const IcReaderRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const IcReaderScreen();
}

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
