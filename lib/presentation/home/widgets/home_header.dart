import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: whiteColor,
      padding: paddingHorizontal24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Maharram Guliyev',
            style: size24weight700.copyWith(
              color: textColor,
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
