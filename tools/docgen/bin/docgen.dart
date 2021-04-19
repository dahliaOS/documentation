//developers - use `dart bin/docgen.dart` to create the HTML version of the docs!
import 'dart:io';
import 'package:markdown/markdown.dart';

void main(List<String> arguments) {
  var documentInQuestion =
      Process.runSync('cat', ['../../docs/articles/os/linux-based.md'])
          .stdout
          .toString();
  print(
      markdownToHtml(documentInQuestion, inlineSyntaxes: [InlineHtmlSyntax()]));
}
