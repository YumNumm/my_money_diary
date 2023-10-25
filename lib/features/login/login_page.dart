import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/router/router.dart';
import 'package:my_money_diary/core/service/auth/auth_service.dart';
import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(authServiceProvider);

    final isLoading = useState(false);
    final isEmailValid = useState(false);
    final redirecting = useState(false);

    final focusNode = useFocusNode();

    final emailController = useTextEditingController();
    final client = ref.watch(supabaseClientProvider);
    final authStateSubscription = useMemoized(
      () => client.auth.onAuthStateChange,
      [],
    );

    Future<void> signIn() async {
      final email = emailController.text;
      if (email.isEmpty) {
        throw ArgumentError();
      }
      isLoading.value = true;
      emailController.clear();
      focusNode.unfocus();
      try {
        final result = await viewModel.logIn(email);
        if (context.mounted) {
          final _ = switch (result) {
            Success() => {
                if (context.mounted)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('メールを送信しました。メール内のリンクをタップしてログインしてください'),
                      ),
                    ),
                  },
              },
            Failure(exception: final error) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: switch (error) {
                      AuthException() => Text('エラーが発生しました: ${error.message}'),
                      Exception() => Text('エラーが発生しました: $error'),
                    },
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                ),
              },
          };
        }
      } finally {
        if (context.mounted) {
          isLoading.value = false;
        }
      }
    }

    useEffect(
      () {
        WidgetsBinding.instance.endOfFrame.then((_) {
          authStateSubscription.listen((event) {
            if (redirecting.value) {
              return;
            }
            final session = event.session;
            if (session != null) {
              redirecting.value = true;
              context.go(const HomeRoute().location);
            }
          });
        });
        isLoading.addListener(() {
          if (isLoading.value) {
            showDialog<void>(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          } else {
            Navigator.of(context).pop();
          }
        });
        emailController.addListener(
          () => isEmailValid.value =
              EmailValidator.validate(emailController.text.trim()),
        );
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          children: [
            const Text('My家計簿にを利用するためには、メールアドレスを入力してください。'),
            const SizedBox(height: 18),
            TextFormField(
              focusNode: focusNode,
              autofocus: true,
              controller: emailController,
              decoration: const InputDecoration(labelText: 'メールアドレス'),
              validator: viewModel.validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              // outlined
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 18),
            FilledButton(
              onPressed: !isLoading.value && isEmailValid.value ? signIn : null,
              child: Text(isLoading.value ? '処理中...' : 'メールでログイン'),
            ),
          ],
        ),
      ),
    );
  }
}
