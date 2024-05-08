import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';

class OutlinedButtonCustom extends StatefulWidget {
  final String title;
  final Function onPressed;
  final Size? buttonSize;

  const OutlinedButtonCustom({
    super.key,
    required this.title,
    required this.onPressed,
    this.buttonSize = const Size(200.0, 55.0),
  });

  @override
  State<OutlinedButtonCustom> createState() => _OutlinedButtonCustomState();
}

class _OutlinedButtonCustomState extends State<OutlinedButtonCustom> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.buttonSize?.height,
      width: widget.buttonSize?.width,
      child: OutlinedButton(
        onPressed: () => widget.onPressed(),
        onHover: (value) => setState(() => _onHover = value),
        style: OutlinedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: _onHover ? primaryColor : whiteColor,
          side: const BorderSide(
            color: primaryColor,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          widget.title,
          style: size14weight400.copyWith(color: _onHover ? whiteColor : primaryColor),
        ),
      ),
    );
  }
}
