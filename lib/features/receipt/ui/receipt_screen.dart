import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_money_diary/core/service/supabase/model/db/receipt.dart';
import 'package:my_money_diary/features/receipt/data/receipt_view_model.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipt'),
      ),
      body: const _ReceiptListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _ReceiptInfoDialog.show(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ReceiptListView extends HookConsumerWidget {
  const _ReceiptListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    useEffect(
      () {
        WidgetsBinding.instance.endOfFrame.then(
          (_) => ref.read(receiptViewModelProvider.notifier).fetchReceipts(),
        );
        return null;
      },
      const [],
    );

    final state = ref.watch(receiptViewModelProvider);

    Future<void> refresh() async {
      final _ = ref.refresh(receiptViewModelProvider);
      await ref.read(receiptViewModelProvider.notifier).fetchReceipts();
    }

    return switch (state) {
      null => const Center(child: CircularProgressIndicator.adaptive()),
      AsyncError(:final error) => Text(error.toString()),
      AsyncData(:final value) when value.isEmpty => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Receipt',
                style: textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              // refresh button
              ElevatedButton(
                onPressed: refresh,
                child: const Text('Refresh'),
              ),
            ],
          ),
        ),
      AsyncData(:final value) => () {
          return RefreshIndicator.adaptive(
            onRefresh: refresh,
            child: ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                final receipt = value[index];
                return _ReceiptListTile(
                  receipt: receipt,
                );
              },
            ),
          );
        }(),
      _ => const Center(child: CircularProgressIndicator.adaptive()),
    };
  }
}

class _ReceiptListTile extends StatelessWidget {
  const _ReceiptListTile({
    required this.receipt,
  });

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final numberFormatter = NumberFormat('#,###');
    return ListTile(
      title: Text(receipt.name),
      subtitle: Text(receipt.purchasedAt.toLocal().toIso8601String()),
      trailing: Text(
        '¥${numberFormatter.format(receipt.amount.toInt())}',
        style: textTheme.titleMedium?.copyWith(
          color: receipt.amount >= 0
              ? theme.colorScheme.primary
              : theme.colorScheme.error,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ReceiptInfoDialog extends ConsumerWidget {
  const _ReceiptInfoDialog();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AlertDialog.adaptive(
      title: Text('Receipt Info'),
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Purchased At',
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> show(BuildContext context) => showDialog<void>(
        context: context,
        builder: (context) => const _ReceiptInfoDialog(),
      );
}
