import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatefulWidget {
  final ProjectModel project;

  const ProjectItem({super.key, required this.project});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.2,
            width: double.infinity,
            child: Image.asset(
              widget.project.image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 12.0),
          Column(
            children: [
              Text(
                widget.project.name,
                style: size32weight700.copyWith(color: textColor, fontSize: 30),
              ),
              Visibility(
                visible: widget.project.description!.isNotEmpty,
                child: Text(
                  widget.project.description!,
                  style: size20weight700.copyWith(color: textColor),
                ),
              ),
              if (widget.project.playStoreUrl!.isNotEmpty) ...[
                const SizedBox(height: 12.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => _launchUrl(widget.project.playStoreUrl!),
                          onHover: (value) => setState(() => onHover1 = value),
                          style: OutlinedButton.styleFrom(
                            elevation: 0.0,
                            fixedSize: const Size(double.infinity, 40),
                            backgroundColor: onHover1 ? textColor : whiteColor,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                            side: const BorderSide(color: textColor, width: 1.0),
                          ),
                          child: Text(
                            'Play Store',
                            style: size24weight700.copyWith(color: onHover1 ? whiteColor : textColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              if (widget.project.appStoreUrl!.isNotEmpty) ...[
                const SizedBox(height: 12.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => _launchUrl(widget.project.appStoreUrl!),
                          onHover: (value) => setState(() => onHover2 = value),
                          style: OutlinedButton.styleFrom(
                            elevation: 0.0,
                            fixedSize: const Size(double.infinity, 40),
                            backgroundColor: onHover2 ? textColor : whiteColor,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                            side: const BorderSide(color: textColor, width: 1.0),
                          ),
                          child: Text(
                            'App Store',
                            style: size24weight700.copyWith(color: onHover2 ? whiteColor : textColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}
