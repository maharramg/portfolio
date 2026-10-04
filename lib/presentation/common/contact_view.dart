import 'dart:async';

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';
import 'package:portfolio/presentation/widgets/text_lines.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

// The only part of the site that runs Dart in the browser: everything else is static HTML and CSS.
@client
class ContactView extends StatefulComponent {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  static final _emailRegExp = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  String _name = '';
  String _email = '';
  String _message = '';

  String? _nameError;
  String? _emailError;
  String? _messageError;

  bool _sending = false;

  // Whether the last send succeeded, while its message is on screen.
  bool? _sent;

  // Bumped after a successful send so the fields are recreated empty.
  int _formVersion = 0;

  Future<void> _submit() async {
    if (_sending) return;

    final name = _name.trim();
    final email = _email.trim();
    final message = _message.trim();

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

    final sent = await EmailService.sendEmail(name: name, email: email, message: message);

    if (!mounted) return;

    setState(() {
      _sending = false;
      _sent = sent;

      if (sent) {
        _name = _email = _message = '';
        _formVersion++;
      }
    });

    Timer(const Duration(seconds: 2), () {
      if (mounted) setState(() => _sent = null);
    });
  }

  @override
  Component build(BuildContext context) {
    final sent = _sent;

    return section(classes: 'contact', [
      div(classes: 'contact-intro', [
        h2([
          ...textLines(Strings.letsTalk),
          span([.text('*')]),
        ]),
        h3([.text(Strings.contactWithMe)]),
        p([.text(Strings.contactWithMeDesc)]),
      ]),
      div(key: ValueKey(_formVersion), classes: 'contact-form', [
        div(classes: 'field-row', [
          _buildField(
            id: 'contact-name',
            label: Strings.yourNameLabel,
            error: _nameError,
            field: input<String>(
              id: 'contact-name',
              type: InputType.text,
              attributes: const {'placeholder': Strings.fullNameHintText, 'autocomplete': 'name'},
              onInput: (value) => _name = value,
            ),
          ),
          _buildField(
            id: 'contact-email',
            label: Strings.yourEmailLabel,
            error: _emailError,
            field: input<String>(
              id: 'contact-email',
              type: InputType.email,
              attributes: const {'placeholder': Strings.emailHintText, 'autocomplete': 'email'},
              onInput: (value) => _email = value,
            ),
          ),
        ]),
        _buildField(
          id: 'contact-message',
          label: Strings.yourMessageLabel,
          error: _messageError,
          field: textarea(id: 'contact-message', placeholder: Strings.messageHintText, onInput: (value) => _message = value, []),
        ),
        button(classes: 'btn btn-send', type: ButtonType.button, disabled: _sending, onClick: _submit, [
          .text(_sending ? Strings.sending : Strings.sendMessage),
        ]),
      ]),
      if (sent != null)
        div(classes: sent ? 'toast' : 'toast error', attributes: {'role': 'status'}, [
          AppIcon(sent ? 'check' : 'xmark'),
          .text(sent ? Strings.emailSent : Strings.emailFailed),
        ]),
    ]);
  }

  Component _buildField({required String id, required String label, required String? error, required Component field}) {
    return div(classes: error == null ? 'field' : 'field invalid', [
      // `label` the element is shadowed by the parameter of the same name.
      Component.element(tag: 'label', attributes: {'for': id}, children: [.text(label)]),
      field,
      if (error != null) span(classes: 'field-error', [.text(error)]),
    ]);
  }
}
