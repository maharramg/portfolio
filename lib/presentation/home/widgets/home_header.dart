import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: paddingHorizontal24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Maharram Guliyev',
            style: size24weight900.copyWith(fontSize: 70),
          ),
        ],
      ),
    );
  }
}
