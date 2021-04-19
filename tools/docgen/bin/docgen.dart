//developers - use `dart bin/docgen.dart` to create the HTML version of the docs!
//variables read here:
//DOCGEN_DOCUMENT_GHLINK_GGFF: This is the link to the document's source code
//DOCGEN_DOCUMENT_TITLE_GGFF: This is the name of the document, used in the heading and title
//Declare other in-document variables with the suffix _GGFF to prevent accidental insertion
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
