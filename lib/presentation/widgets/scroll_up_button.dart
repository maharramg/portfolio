import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

class ScrollUpButton extends StatefulWidget {
  final ScrollController controller;

  const ScrollUpButton({
    super.key,
    required this.controller,
  });

  @override
  State<ScrollUpButton> createState() => _ScrollUpButtonState();
}

class _ScrollUpButtonState extends State<ScrollUpButton> {
  bool showButton = false;
  bool shouldBeVisible = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    // Only offer the shortcut once a full screen has been scrolled.
    final threshold = widget.controller.position.viewportDimension;
    final visible = widget.controller.offset > threshold * 0.9;
    final show = widget.controller.offset > threshold;

    if (visible != shouldBeVisible || show != showButton) {
      setState(() {
        shouldBeVisible = visible;
        showButton = show;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: shouldBeVisible,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: showButton ? 1.0 : 0.0,
        child: FloatingActionButton(
          onPressed: () {
            widget.controller.animateTo(
              0,
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastOutSlowIn,
            );
          },
          tooltip: Strings.backToTop,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          backgroundColor: primaryColor,
          child: const FaIcon(
            FontAwesomeIcons.caretUp,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
