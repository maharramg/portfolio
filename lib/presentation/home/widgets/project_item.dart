import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

// FontAwesomeIcons.apple / .googlePlay, spelled out as plain IconData: release icon tree-shaking
// drops glyphs referenced through the FontAwesomeIcons wrapper from this file.
const _appStoreIcon = IconData(0xf179, fontFamily: 'FontAwesomeBrands', fontPackage: 'font_awesome_flutter');
const _playStoreIcon = IconData(0xf3ab, fontFamily: 'FontAwesomeBrands', fontPackage: 'font_awesome_flutter');

class ProjectItem extends StatefulWidget {
  final ProjectModel project;
  final bool reversed;

  const ProjectItem({
    super.key,
    required this.project,
    this.reversed = false,
  });

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    final image = SizedBox(
      height: context.isDesktop
          ? (screenHeight * 0.6).clamp(360.0, 600.0)
          : context.isTablet
              ? screenHeight * 0.4
              : null,
      child: Image.asset(
        widget.project.images.first,
        semanticLabel: '${widget.project.name} app screens',
      ),
    );

    return MouseRegion(
      onEnter: (_) => setState(() => _onHover = true),
      onExit: (_) => setState(() => _onHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        transform: Matrix4.translationValues(0.0, _onHover ? -4.0 : 0.0, 0.0),
        padding: context.isDesktop
            ? const EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0)
            : context.isTablet
                ? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0)
                : const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withValues(alpha: _onHover ? 0.12 : 0.0),
              blurRadius: 30.0,
              offset: const Offset(0.0, 12.0),
            ),
          ],
        ),
        child: context.isDesktop
            ? Row(
                children: [
                  if (widget.reversed) ...[image, const SizedBox(width: 40.0)],
                  Expanded(
                    child: Align(
                      alignment: widget.reversed ? Alignment.centerRight : Alignment.centerLeft,
                      child: _buildInfo(centered: false),
                    ),
                  ),
                  if (!widget.reversed) ...[const SizedBox(width: 40.0), image],
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfo(centered: true),
                  const SizedBox(height: 30.0),
                  image,
                ],
              ),
      ),
    );
  }

  Widget _buildInfo({required bool centered}) {
    final stacked = context.isMobile;
    final logoSize = context.isMobile ? 50.0 : 60.0;
    final textAlign = centered ? TextAlign.center : TextAlign.start;

    final logo = Container(
      height: logoSize,
      width: logoSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: primaryColor.withValues(alpha: 0.15)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(widget.project.logo),
        ),
      ),
    );

    final name = Text(
      widget.project.name,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: context.isMobile ? 35.0 : 45.0,
        fontWeight: FontWeight.w800,
        color: primaryColor,
        fontFamily: neuePowerFont,
        height: 1.0,
      ),
    );

    return Column(
      crossAxisAlignment: centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        if (stacked) ...[
          logo,
          const SizedBox(height: 12.0),
          name,
        ] else
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: centered ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              logo,
              const SizedBox(width: 12.0),
              Flexible(child: name),
            ],
          ),
        const SizedBox(height: 20.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: primaryColor.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            widget.project.category,
            style: size13weight500.copyWith(color: primaryColor),
          ),
        ),
        const SizedBox(height: 20.0),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420.0),
          child: Text(
            widget.project.description,
            textAlign: textAlign,
            style: (context.isDesktop ? size16weight400 : size14weight400).copyWith(color: blackColor, height: 1.5),
          ),
        ),
        const SizedBox(height: 30.0),
        _buildButtons(centered: centered),
      ],
    );
  }

  Widget _buildButtons({required bool centered}) {
    final appStoreUrl = widget.project.appStoreUrl ?? '';
    final playStoreUrl = widget.project.playStoreUrl ?? '';
    final buttonSize = context.isDesktop ? const Size(200.0, 55.0) : const Size(180.0, 46.0);

    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      alignment: centered ? WrapAlignment.center : WrapAlignment.start,
      children: [
        OutlinedButtonCustom(
          title: Strings.appStore,
          icon: _appStoreIcon,
          buttonSize: buttonSize,
          onPressed: appStoreUrl.isEmpty ? null : () => URLLauncher.launchURL(appStoreUrl),
        ),
        OutlinedButtonCustom(
          title: Strings.googlePlay,
          icon: _playStoreIcon,
          buttonSize: buttonSize,
          onPressed: playStoreUrl.isEmpty ? null : () => URLLauncher.launchURL(playStoreUrl),
        ),
      ],
    );
  }
}
