import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/services.dart';

class MobileProjectItem extends StatefulWidget {
  final ProjectModel project;

  const MobileProjectItem({super.key, required this.project});

  @override
  State<MobileProjectItem> createState() => MobileProjectItemState();
}

class MobileProjectItemState extends State<MobileProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.project.name,
            style: size32weight700,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image.asset(
                widget.project.logo,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Column(
            children: [
              if (widget.project.playStoreUrl!.isNotEmpty) ...[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: OutlinedButton(
                    onPressed: () => URLLauncher.launchURL(widget.project.playStoreUrl!),
                    onHover: (value) => setState(() => onHover1 = value),
                    style: OutlinedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: onHover1 ? whiteColor.withOpacity(0.1) : primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                      side: BorderSide.none,
                    ),
                    child: Text(
                      'GOOGLE PLAY',
                      style: size18weight600.copyWith(letterSpacing: 2.5),
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
              ],
              if (widget.project.appStoreUrl!.isNotEmpty) ...[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: OutlinedButton(
                    onPressed: () => URLLauncher.launchURL(widget.project.appStoreUrl!),
                    onHover: (value) => setState(() => onHover2 = value),
                    style: OutlinedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: onHover2 ? whiteColor.withOpacity(0.1) : primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                      side: BorderSide.none,
                    ),
                    child: Text(
                      'APP STORE',
                      style: size18weight600.copyWith(letterSpacing: 2.5),
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: widget.project.images.length,
                itemBuilder: (context, index, realIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      widget.project.images.elementAt(index),
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 0.65,
                  viewportFraction: 0.75,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 12.0),
              DotsIndicator(
                dotsCount: widget.project.images.length,
                position: _currentIndex,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
