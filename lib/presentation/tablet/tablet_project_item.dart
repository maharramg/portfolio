import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/services.dart';

class TabletProjectItem extends StatefulWidget {
  final ProjectModel project;

  const TabletProjectItem({super.key, required this.project});

  @override
  State<TabletProjectItem> createState() => _TabletProjectItemState();
}

class _TabletProjectItemState extends State<TabletProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 12 / 5,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 3 / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Text(
                      widget.project.name,
                      style: size32weight700.copyWith(fontSize: MediaQuery.of(context).size.width * 0.025),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          widget.project.logo,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  if (widget.project.playStoreUrl!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 2,
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
                            style: size18weight600.copyWith(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                  ],
                  if (widget.project.appStoreUrl!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 2,
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
                            style: size18weight600.copyWith(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: 8 / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.project.images.length > 3 ? 3 : widget.project.images.length,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 1 / 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              widget.project.images.elementAt(index),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(width: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
