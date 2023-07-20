import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ))),
        onPressed: onTap,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
