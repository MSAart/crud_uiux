import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({
    required this.hintext,
    required this.textInputType,
    required this.isPassword,
    required this.iconPrefix,
    Key? key,
  }) : super(key: key);

  final String hintext;
  bool passwordVisible = false;
  final TextInputType textInputType;
  final bool isPassword;
  final Widget iconPrefix;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
      cursorColor: Colors.black,
      obscureText:
          widget.isPassword ? !widget.passwordVisible : widget.passwordVisible,
      decoration: InputDecoration(
        prefixIcon: widget.iconPrefix,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.passwordVisible = !widget.passwordVisible;
                  });
                },
                icon: widget.passwordVisible
                    ? const Icon(Icons.visibility_off, color: Color(0xff5F6F8C))
                    : const Icon(Icons.visibility, color: Color(0xff5F6F8C)),
                color: const Color(0xff5F6F8C),
              )
            : null,
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
