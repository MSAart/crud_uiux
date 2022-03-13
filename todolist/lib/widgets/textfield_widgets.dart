import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({
    required this.hintext,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String hintext;
  TextEditingController controller;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 5.0),
        fillColor: const Color(0xFFA9BCCF).withOpacity(0.2),
        filled: true,
        hintText: widget.hintext,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xffA9BCCF).withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xffA9BCCF).withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
