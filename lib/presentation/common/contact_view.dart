import 'package:flutter/material.dart';
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
  static final _emailRegExp = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String? _nameError;
  String? _emailError;
  String? _messageError;

  bool _sending = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_sending) return;

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final message = _messageController.text.trim();

    setState(() {
      _nameError = name.isEmpty ? Strings.required : null;
      _emailError = email.isEmpty
          ? Strings.required
          : _emailRegExp.hasMatch(email)
              ? null
              : Strings.invalidEmail;
      _messageError = message.isEmpty ? Strings.required : null;
    });

    if (_nameError != null || _emailError != null || _messageError != null) return;

    setState(() => _sending = true);

    final sent = await EmailService.sendEmail(
      context: context,
      name: name,
      email: email,
      message: message,
    );

    if (!mounted) return;

    setState(() => _sending = false);

    if (sent) {
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return context.isMobile
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIntro(),
                const SizedBox(height: 24.0),
                _buildForm(),
              ],
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.isDesktop ? width * 0.43 : width * 0.4,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.isDesktop ? 130.0 : 80.0, vertical: 50.0),
                  child: _buildIntro(),
                ),
              ),
              Container(
                width: context.isDesktop ? width * 0.57 : width * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 50.0).copyWith(right: context.isDesktop ? 130.0 : 0.0),
                child: _buildForm(),
              ),
            ],
          );
  }

  Widget _buildIntro() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
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
        SizedBox(height: context.isDesktop ? 50.0 : 25.0),
        Text(
          Strings.contactWithMe,
          style: size24weight600.copyWith(color: primaryColor),
        ),
        const SizedBox(height: 12.0),
        SizedBox(
          width: 300.0,
          child: Text(
            Strings.contactWithMeDesc,
            style: size14weight400.copyWith(color: blackColor, height: 1.5),
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    final nameField = TextFieldCustom(
      controller: _nameController,
      label: Strings.yourNameLabel,
      hintText: Strings.fullNameHintText,
      keyboardType: TextInputType.name,
      autofillHints: const [AutofillHints.name],
      errorText: _nameError,
    );

    final emailField = TextFieldCustom(
      controller: _emailController,
      label: Strings.yourEmailLabel,
      hintText: Strings.emailHintText,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      errorText: _emailError,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (context.isDesktop)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: nameField),
              const SizedBox(width: 24.0),
              Expanded(child: emailField),
            ],
          )
        else ...[
          nameField,
          const SizedBox(height: 24.0),
          emailField,
        ],
        const SizedBox(height: 24.0),
        TextFieldCustom(
          controller: _messageController,
          label: Strings.yourMessageLabel,
          hintText: Strings.messageHintText,
          maxLines: context.isDesktop ? 8 : 10,
          contentPadding: const EdgeInsets.all(20.0),
          errorText: _messageError,
        ),
        const SizedBox(height: 24.0),
        OutlinedButtonCustom(
          title: _sending ? Strings.sending : Strings.sendMessage,
          buttonSize: const Size(160.0, 46.0),
          onPressed: _submit,
        ),
        if (context.isDesktop) const SizedBox(height: 80.0),
      ],
    );
  }
}
