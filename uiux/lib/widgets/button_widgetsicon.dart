import 'package:flutter/material.dart';

class ButtonWidget2 extends StatelessWidget {
  const ButtonWidget2({
    required this.onPressed,
    required this.text,
    required this.style,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final TextStyle style;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xffEC5F70),
        minimumSize: const Size(double.infinity, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          Text(
            text,
            style: style,
          ),
        ],
      ),
    );
  }
}
