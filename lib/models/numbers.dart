import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    Key? key,
    required this.number,
    required this.onPressed,
  }) : super(key: key);
  final String number;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          number,
          style: const TextStyle(
              color: Colors.black, fontSize: 48, fontWeight: FontWeight.w200),
        ));
  }
}
