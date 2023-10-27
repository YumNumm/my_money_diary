import 'dart:async';

import 'package:my_money_diary/core/service/supabase/model/db/receipt.dart';
import 'package:my_money_diary/core/service/supabase/model/dto/insert_receipt.dart';
import 'package:my_money_diary/core/service/supabase/model/dto/insert_receipt_category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

part 'supabase_client.g.dart';

@Riverpod(keepAlive: true)
SupabaseClient supabaseClient(SupabaseClientRef ref) =>
    Supabase.instance.client;

@riverpod
class SupabaseCurrentUser extends _$SupabaseCurrentUser {
  @override
  User? build() {
    final client = ref.watch(supabaseClientProvider);
    client.auth.onAuthStateChange.listen((_) => ref.invalidateSelf());
    return client.auth.currentUser;
  }
}

@riverpod
MoneyDiaryService moneyDiaryService(MoneyDiaryServiceRef ref) =>
    MoneyDiaryService(
      client: ref.watch(supabaseClientProvider),
    );

class MoneyDiaryService {
  MoneyDiaryService({required this.client});

  final SupabaseClient client;

  Future<void> upsertReceiptCategory(ReceiptCategoryInsertDto dto) async =>
      await client.from('receipt_category').insert(
            dto,
          );

  Future<void> upsertReceipt(ReceiptInsertDto dto) async =>
      await client.from('receipt').insert(
            dto,
          );

  Future<({List<Receipt> result, int? count})> fetchReceiptOrderByPurchaseDate({
    required int offset,
    required int limit,
  }) async {
    final result = await client
        .from('receipt')
        .select<PostgrestListResponse>(
          '*',
          const FetchOptions(count: CountOption.exact),
        )
        .order('purchased_at', ascending: false)
        .range(offset, offset + limit - 1);
    return (
      result: (result.data ?? []).map(Receipt.fromJson).toList(),
      count: result.count
    );
  }

  Future<({List<Receipt> result, int? count})>
      fetchReceiptFilteredByPurchaseDate({
    required DateTime from,
    required DateTime to,
    required int offset,
    required int limit,
  }) async {
    final result = await client
        .from('receipt')
        .select<PostgrestListResponse>(
          '*',
          const FetchOptions(count: CountOption.exact),
        )
        .gte('purchase_date', from.toIso8601String())
        .lte('purchase_date', to.toIso8601String())
        .range(offset, offset + limit - 1);
    return (
      result: (result.data ?? []).map(Receipt.fromJson).toList(),
      count: result.count
    );
  }

  Stream<List<Receipt>> listenReceiptChange() => client.from('receipt').stream(
        primaryKey: ['id'],
      ).map(
        (event) => event.map(Receipt.fromJson).toList(),
      );
}
