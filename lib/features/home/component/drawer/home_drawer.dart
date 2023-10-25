import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/router/router.dart';
import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:my_money_diary/features/home/component/drawer/home_drawer_view_model.dart';

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final viewModel = ref.watch(homeDrawerViewModelProvider);
    final currentUser = ref.watch(supabaseCurrentUserProvider);
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  if (currentUser != null)
                    UserAccountsDrawerHeader(
                      accountName: const Text(""),
                      accountEmail: Text(
                        currentUser.email ?? "",
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                      ),
                    ),
                  ListTile(
                    title: const Text('ICリーダー'),
                    leading: const Icon(Icons.qr_code_scanner),
                    onTap: () => context.go(IcReaderRoute().location),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('ログアウト'),
              leading: const Icon(Icons.logout),
              onTap: () async {
                // 本当にログアウトするか確認するダイアログを表示する
                final shouldSignOut = await showDialog<bool?>(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('ログアウトしますか？'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text('キャンセル'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: const Text('ログアウト'),
                        ),
                      ],
                    );
                  },
                );

                // ダイアログでログアウトするを選択した場合はログアウトする
                if (shouldSignOut == true && context.mounted) {
                  // UI Block
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                  final result = await viewModel.signOut();
                  // UI Unblock
                  if (context.mounted && context.canPop()) {
                    context.pop();
                  }
                  if (context.mounted) {
                    final _ = switch (result) {
                      // 正常にログアウトできたら、ログイン画面に遷移する
                      Success() => context.go('/login'),
                      // エラーが発生したら、SnackBarを表示する
                      Failure() => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('エラーが発生しました: ${result.exception}'),
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ),
                        ),
                    };
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
