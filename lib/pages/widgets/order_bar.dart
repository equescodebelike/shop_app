import 'package:flutter/material.dart';

class OrderBar extends StatelessWidget {
  const OrderBar({
    super.key,
    required this.theme,
    required this.title,
  });

  final ThemeData theme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          style: theme.textTheme.headlineSmall?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}