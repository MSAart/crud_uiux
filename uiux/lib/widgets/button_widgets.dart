import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.onPressed,
    required this.text,
    required this.style,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff5F6F8C),
        minimumSize: const Size(double.infinity, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
