import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';

class HoverUnderlineText extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  final bool isTabSelected;

  const HoverUnderlineText({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    required this.isTabSelected,
  });

  @override
  State<HoverUnderlineText> createState() => _HoverUnderlineTextState();
}

class _HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onPressed(),
      onHover: (value) {
        if (!widget.isTabSelected) {
          setState(() {
            isHovered = !isHovered;
          });
        } else {
          setState(() {
            isHovered = true;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: greenColor.withOpacity(widget.isTabSelected || isHovered ? 1.0 : 0.0),
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: widget.textStyle ?? size12weight400,
        ),
      ),
    );
  }
}
