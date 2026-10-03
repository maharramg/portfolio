import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';

class OutlinedButtonCustom extends StatefulWidget {
  final String title;
  final Function? onPressed;
  final Size? buttonSize;
  final IconData? icon;

  const OutlinedButtonCustom({
    super.key,
    required this.title,
    required this.onPressed,
    this.buttonSize = const Size(200.0, 55.0),
    this.icon,
  });

  @override
  State<OutlinedButtonCustom> createState() => _OutlinedButtonCustomState();
}

class _OutlinedButtonCustomState extends State<OutlinedButtonCustom> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    final enabled = widget.onPressed != null;
    final hovered = enabled && _onHover;

    return Opacity(
      opacity: enabled ? 1.0 : 0.35,
      child: SizedBox(
        height: widget.buttonSize?.height,
        width: widget.buttonSize?.width,
        child: OutlinedButton(
          onPressed: enabled ? () => widget.onPressed!() : null,
          onHover: (value) => setState(() => _onHover = value),
          style: OutlinedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: hovered ? primaryColor : whiteColor,
            side: const BorderSide(
              color: primaryColor,
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.icon != null) ...[
                Icon(widget.icon, size: 20.0, color: hovered ? whiteColor : primaryColor),
                const SizedBox(width: 8.0),
              ],
              Text(
                widget.title,
                style: size14weight500.copyWith(color: hovered ? whiteColor : primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
