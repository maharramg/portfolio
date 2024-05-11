import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';

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
    widget.controller.addListener(() {
      double showoffset = 10.0;
      double visibleOffset = 5.0;

      if (widget.controller.offset > visibleOffset) {
        setState(() {
          shouldBeVisible = true;
        });

        if (widget.controller.offset > showoffset) {
          setState(() {
            showButton = true;
          });
        } else {
          setState(() {
            showButton = false;
          });
        }
      } else {
        setState(() {
          shouldBeVisible = false;
        });
      }
    });

    super.initState();
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          backgroundColor: primaryColor,
          child: const Icon(
            FontAwesomeIcons.caretUp,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
