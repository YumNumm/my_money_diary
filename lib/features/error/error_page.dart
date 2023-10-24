import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_money_diary/core/router/router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('不正なページ遷移が行われました'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => context.go(const SplashRoute().location),
          icon: const Icon(Icons.home),
          label: const Text('戻る'),
        ),
      ),
    );
  }
}
