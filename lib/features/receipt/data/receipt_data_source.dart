import 'package:my_money_diary/core/foundation/result.dart';
import 'package:my_money_diary/core/service/supabase/model/db/receipt.dart';
import 'package:my_money_diary/core/service/supabase/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'receipt_data_source.g.dart';

@riverpod
ReceiptDataSource receiptDataSource(ReceiptDataSourceRef ref) =>
    ReceiptDataSource(
      client: ref.watch(moneyDiaryServiceProvider),
    );

class ReceiptDataSource {
  ReceiptDataSource({required MoneyDiaryService client}) : _client = client;

  final MoneyDiaryService _client;

  Future<Result<({List<Receipt> result, int? count}), Exception>> fetchReceipts(
    int offset, {
    int limit = 10,
  }) async {
    try {
      final result = await _client.fetchReceiptOrderByPurchaseDate(
        offset: offset,
        limit: limit,
      );
      return Success(result);
    } on Exception catch (e, st) {
      return Failure(e, st);
    }
  }
}
