import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopProjectItem extends StatefulWidget {
  final ProjectModel project;

  const DesktopProjectItem({super.key, required this.project});

  @override
  State<DesktopProjectItem> createState() => _DesktopProjectItemState();
}

class _DesktopProjectItemState extends State<DesktopProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

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
                      style: size32weight700,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          widget.project.logo,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  if (widget.project.playStoreUrl!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 2,
                        child: OutlinedButton(
                          onPressed: () => _launchUrl(widget.project.playStoreUrl!),
                          onHover: (value) => setState(() => onHover1 = value),
                          style: OutlinedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: onHover1 ? whiteColor.withOpacity(0.1) : primaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                            side: BorderSide.none,
                          ),
                          child: Text(
                            'Play Store',
                            style: size24weight400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                  ],
                  if (widget.project.appStoreUrl!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 2,
                        child: OutlinedButton(
                          onPressed: () => _launchUrl(widget.project.appStoreUrl!),
                          onHover: (value) => setState(() => onHover2 = value),
                          style: OutlinedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: onHover2 ? whiteColor.withOpacity(0.1) : primaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                            side: BorderSide.none,
                          ),
                          child: Text(
                            'App Store',
                            style: size24weight400,
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
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
