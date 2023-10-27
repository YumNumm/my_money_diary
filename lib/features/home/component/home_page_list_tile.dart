import 'package:flutter/material.dart';

class HomePageListTile extends StatelessWidget {
  const HomePageListTile({
    required this.title,
    required this.description,
    required this.onTap,
    required this.icon,
    super.key,
  });

  final String title;
  final String description;
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: colorScheme.primary,
        ),
      ),
      margin: const EdgeInsets.all(8),
      child: ListTile(
        onTap: onTap,
        titleTextStyle: textTheme.titleLarge,
        iconColor: colorScheme.primary,
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}
