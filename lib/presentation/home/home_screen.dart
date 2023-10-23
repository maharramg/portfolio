import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home/widgets/home_body.dart';
import 'package:portfolio/presentation/home/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
