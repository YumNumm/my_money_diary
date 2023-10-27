import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_money_diary/core/router/router.dart';
import 'package:my_money_diary/features/home/component/drawer/home_drawer.dart';
import 'package:my_money_diary/features/home/component/home_page_list_tile.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomePageListTile(
            title: 'Receipt',
            description: 'Manage your receipt',
            icon: Icons.receipt,
            onTap: () => context.push(const ReceiptRoute().location),
          ),
          HomePageListTile(
            title: 'Category',
            description: 'Manage your category',
            icon: Icons.category,
            onTap: () {},
          ),
          const Divider(),
          HomePageListTile(
            title: 'IC Card Reader',
            description: 'Read your IC Card',
            icon: Icons.credit_card,
            onTap: () => context.push(const IcReaderRoute().location),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
