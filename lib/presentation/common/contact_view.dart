import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/presentation/widgets/text_field_custom.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _messageController;

  bool _validateName = false;
  bool _validateEmail = false;
  bool _validateMessage = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? _buildMobileContactField(context)
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.isDesktop
                    ? MediaQuery.of(context).size.width * 0.43
                    : context.isTablet
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width,
                child: Padding(
                  padding: context.isDesktop
                      ? const EdgeInsets.symmetric(horizontal: 130.0, vertical: 50.0)
                      : context.isTablet
                          ? const EdgeInsets.symmetric(horizontal: 80.0, vertical: 50.0)
                          : const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.w800,
                            color: primaryColor,
                            fontFamily: neuePowerFont,
                            height: 0.85,
                          ),
                          children: [
                            TextSpan(
                              text: Strings.letsTalk,
                            ),
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: greenColor),
                            ),
                          ],
                        ),
                      ),
                      context.isDesktop
                          ? const SizedBox(height: 50.0)
                          : context.isTablet
                              ? const SizedBox(height: 25.0)
                              : const SizedBox(height: 25.0),
                      Text(
                        Strings.contactWithMe,
                        style: size24weight600.copyWith(color: primaryColor),
                      ),
                      const SizedBox(height: 12.0),
                      SizedBox(
                        width: 300.0,
                        child: Text(
                          Strings.contactWithMeDesc,
                          style: size13weight400.copyWith(color: blackColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: context.isDesktop
                    ? MediaQuery.of(context).size.width * 0.57
                    : context.isTablet
                        ? MediaQuery.of(context).size.width * 0.5
                        : MediaQuery.of(context).size.width * 0.5,
                padding: context.isDesktop
                    ? const EdgeInsets.symmetric(vertical: 50.0).copyWith(right: 130.0)
                    : context.isTablet
                        ? const EdgeInsets.symmetric(vertical: 50.0)
                        : const EdgeInsets.symmetric(vertical: 50.0),
                child: context.isDesktop
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldCustom(
                                  controller: _nameController,
                                  label: Strings.yourNameLabel,
                                  hintText: Strings.fullNameHintText,
                                  errorText: _validateName ? Strings.required : null,
                                ),
                              ),
                              const SizedBox(width: 24.0),
                              Expanded(
                                child: TextFieldCustom(
                                  controller: _emailController,
                                  label: Strings.yourEmailLabel,
                                  hintText: Strings.emailHintText,
                                  errorText: _validateEmail ? Strings.required : null,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24.0),
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldCustom(
                                  controller: _messageController,
                                  label: Strings.yourMessageLabel,
                                  hintText: Strings.messageHintText,
                                  maxLines: 8,
                                  contentPadding: const EdgeInsets.only(top: 40.0, left: 20.0),
                                  errorText: _validateMessage ? Strings.required : null,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24.0),
                          OutlinedButtonCustom(
                            title: Strings.sendMessage,
                            buttonSize: const Size(160.0, 45.0),
                            onPressed: () {
                              setState(() {
                                _validateName = _nameController.text.isEmpty;
                                _validateEmail = _emailController.text.isEmpty;
                                _validateMessage = _messageController.text.isEmpty;
                              });

                              if (!_validateName && !_validateEmail && !_validateMessage) {
                                URLLauncher.launchEmail(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  message: _messageController.text,
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 80.0),
                        ],
                      )
                    : context.isTablet
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldCustom(
                                controller: _nameController,
                                label: Strings.yourNameLabel,
                                hintText: Strings.fullNameHintText,
                                errorText: _validateName ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              TextFieldCustom(
                                controller: _emailController,
                                label: Strings.yourEmailLabel,
                                hintText: Strings.emailHintText,
                                errorText: _validateEmail ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              TextFieldCustom(
                                controller: _messageController,
                                label: Strings.yourMessageLabel,
                                hintText: Strings.messageHintText,
                                maxLines: 10,
                                contentPadding: const EdgeInsets.only(top: 40.0, left: 20.0),
                                errorText: _validateMessage ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              OutlinedButtonCustom(
                                title: Strings.sendMessage,
                                buttonSize: const Size(160.0, 45.0),
                                onPressed: () {
                                  setState(() {
                                    _validateName = _nameController.text.isEmpty;
                                    _validateEmail = _emailController.text.isEmpty;
                                    _validateMessage = _messageController.text.isEmpty;
                                  });

                                  if (!_validateName && !_validateEmail && !_validateMessage) {
                                    URLLauncher.launchEmail(
                                      name: _nameController.text,
                                      email: _emailController.text,
                                      message: _messageController.text,
                                    );
                                  }
                                },
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldCustom(
                                controller: _nameController,
                                label: Strings.yourNameLabel,
                                hintText: Strings.fullNameHintText,
                                errorText: _validateName ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              TextFieldCustom(
                                controller: _emailController,
                                label: Strings.yourEmailLabel,
                                hintText: Strings.emailHintText,
                                errorText: _validateEmail ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              TextFieldCustom(
                                controller: _messageController,
                                label: Strings.yourMessageLabel,
                                hintText: Strings.messageHintText,
                                maxLines: 10,
                                contentPadding: const EdgeInsets.only(top: 40.0, left: 20.0),
                                errorText: _validateMessage ? Strings.required : null,
                              ),
                              const SizedBox(height: 24.0),
                              OutlinedButtonCustom(
                                title: Strings.sendMessage,
                                buttonSize: const Size(160.0, 45.0),
                                onPressed: () {
                                  setState(() {
                                    _validateName = _nameController.text.isEmpty;
                                    _validateEmail = _emailController.text.isEmpty;
                                    _validateMessage = _messageController.text.isEmpty;
                                  });

                                  if (!_validateName && !_validateEmail && !_validateMessage) {
                                    URLLauncher.launchEmail(
                                      name: _nameController.text,
                                      email: _emailController.text,
                                      message: _messageController.text,
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
              ),
            ],
          );
  }

  _buildMobileContactField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w800,
                      color: primaryColor,
                      fontFamily: neuePowerFont,
                      height: 0.85,
                    ),
                    children: [
                      TextSpan(
                        text: Strings.letsTalk,
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: greenColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                Text(
                  Strings.contactWithMe,
                  style: size24weight600.copyWith(color: primaryColor),
                ),
                const SizedBox(height: 12.0),
                SizedBox(
                  width: 300.0,
                  child: Text(
                    Strings.contactWithMeDesc,
                    style: size13weight400.copyWith(color: blackColor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldCustom(
                  controller: _nameController,
                  label: Strings.yourNameLabel,
                  hintText: Strings.fullNameHintText,
                  errorText: _validateName ? Strings.required : null,
                ),
                const SizedBox(height: 24.0),
                TextFieldCustom(
                  controller: _emailController,
                  label: Strings.yourEmailLabel,
                  hintText: Strings.emailHintText,
                  errorText: _validateEmail ? Strings.required : null,
                ),
                const SizedBox(height: 24.0),
                TextFieldCustom(
                  controller: _messageController,
                  label: Strings.yourMessageLabel,
                  hintText: Strings.messageHintText,
                  maxLines: 10,
                  contentPadding: const EdgeInsets.only(top: 40.0, left: 20.0),
                  errorText: _validateMessage ? Strings.required : null,
                ),
                const SizedBox(height: 24.0),
                OutlinedButtonCustom(
                  title: Strings.sendMessage,
                  buttonSize: const Size(160.0, 45.0),
                  onPressed: () {
                    setState(() {
                      _validateName = _nameController.text.isEmpty;
                      _validateEmail = _emailController.text.isEmpty;
                      _validateMessage = _messageController.text.isEmpty;
                    });

                    if (!_validateName && !_validateEmail && !_validateMessage) {
                      URLLauncher.launchEmail(
                        name: _nameController.text,
                        email: _emailController.text,
                        message: _messageController.text,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
