import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';

class TextFieldCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final String hintText;
  final int? maxLines;
  final EdgeInsets? contentPadding;
  final String? errorText;

  const TextFieldCustom({
    super.key,
    this.controller,
    required this.label,
    required this.hintText,
    this.maxLines = 1,
    this.contentPadding = const EdgeInsets.only(bottom: 15.0, left: 20.0, top: 15.0),
    required this.errorText,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: size12weight400.copyWith(color: primaryColor),
        ),
        const SizedBox(height: 8.0),
        TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          cursorColor: primaryColor,
          cursorHeight: 15.0,
          cursorWidth: 1.5,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: size12weight400.copyWith(color: primaryColor.withOpacity(0.2)),
            contentPadding: widget.contentPadding,
            isDense: true,
            filled: true,
            fillColor: _focusNode.hasFocus ? whiteColor : scaffoldBgColor,
            errorText: widget.errorText,
            errorStyle: size10weight400.copyWith(color: Colors.red),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              borderSide: _focusNode.hasFocus ? const BorderSide(color: primaryColor, width: 1.0) : BorderSide.none,
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
          ),
        ),
      ],
    );
  }
}
