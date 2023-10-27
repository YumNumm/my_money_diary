import 'dart:developer';

import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/service/supabase/model/db/receipt.dart';
import 'package:my_money_diary/features/receipt/data/receipt_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'receipt_view_model.g.dart';

@riverpod
class ReceiptViewModel extends _$ReceiptViewModel {
  @override
  AsyncValue<List<Receipt>>? build() => null;

  int? _count;

  Future<void> fetchReceipts() async {
    // exit if already loading
    if (state is AsyncLoading) {
      log('already loading');
      return;
    }
    // exit if already loaded all
    if (state is AsyncData &&
        _count != null &&
        (state?.valueOrNull ?? []).length >= (_count ?? 0)) {
      log('already loaded all');
      return;
    }
    state = state != null
        ? const AsyncLoading<List<Receipt>>().copyWithPrevious(state!)
        : const AsyncLoading<List<Receipt>>();

    final result = await ref.read(receiptDataSourceProvider).fetchReceipts(0);
    final _ = switch (result) {
      Success(value: final value) => () {
          _count = value.count ?? -1;
          state =
              AsyncValue.data([...state?.valueOrNull ?? [], ...value.result]);
          log('Success: ${state?.valueOrNull?.length}');
        }(),
      Failure(exception: final exception, stackTrace: final stackTrace) =>
        state = AsyncValue.error(exception, stackTrace),
    };
  }
}
