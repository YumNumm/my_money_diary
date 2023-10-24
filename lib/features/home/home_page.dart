import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_money_diary/core/service/auth/auth_service.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      return null;
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text("HOMEPAGE"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(authServiceProvider);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
