import 'package:flutter/material.dart';

class CardWithText extends StatelessWidget {
  const CardWithText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: SizedBox(
                height: 300,
                child: Image.asset('assets/images/empty_photo.png')),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}