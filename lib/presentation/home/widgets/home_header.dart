import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 90),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/renaissance.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Hello. I am Maharram',
                style: size32weight700.copyWith(
                  color: textColor,
                  fontSize: 150,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: -2,
                ),
              ),
              Text(
                'WELCOME TO MY ONLINE PORTFOLIO AND CV',
                style: size32weight700.copyWith(color: textColor),
              ),
              Text(
                'I am an experienced mobile app developer who has a track record of success creating apps that are both well-received and commercially viable.',
                style: size20weight700.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
