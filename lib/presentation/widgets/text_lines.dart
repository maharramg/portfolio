import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// [text] with its `\n` characters turned into line breaks.
List<Component> textLines(String text) {
  return [
    for (final (index, line) in text.split('\n').indexed) ...[
      if (index > 0) br(),
      Component.text(line),
    ],
  ];
}
