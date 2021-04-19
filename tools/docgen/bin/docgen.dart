//TL;DR, Use `dart bin/docgen.dart` to create the HTML version of the docs!
//variables read here:
//DOCGEN_DOCUMENT_GHLINK_GGFF: This is the link to the document's source code
//DOCGEN_DOCUMENT_TITLE_GGFF: This is the name of the document, used in the heading and title
//Declare other in-document variables with the suffix _GGFF to prevent accidental insertion
import 'dart:io';
import 'package:markdown/markdown.dart';

//Relative path to markdown documents
var relPath = '../../docs/articles/';
var generatedDocPath = '../../generated/';
//Github repository URL
var ghRepo =
    'https://github.com/dahliaOS/documentation/tree/main/docs/articles/';
//This 2D array is used to identify the documents.
//Provide a relative path to the document from the tools/docgen directory, as a string.
//Syntax for documents in this array is: path, title, Generated File name
var markdownDocs = [
  //PATH, TITLE, Generated File Name
  [
    'os/linux-based.md',
    'Overview of dahliaOS Linux-based Builds',
    'os/linux.html'
  ],
  [
    'pangolin/Pangolin-Desktop.md',
    'The Pangolin Desktop',
    'pangolin/pangolin.html'
  ],
  [
    'pangolin/Pangolin-Linux.md',
    'Pangolin Desktop on Linux',
    'pangolin/pangolin-linux.html'
  ],
  ['install/QEMU.md', 'Running dahliaOS in QEMU', 'install/qemu.html'],
  ['install/64bit.md', 'dahliaOS 64-bit with UEFI' 'install/efi.html'],
  [
    'install/64bit-Legacy.md',
    'dahliaOS 64-bit with Legacy BIOS',
    'install/legacy.html'
  ],
  ['build/buildroot.md', 'The Buildroot Toolchain', 'build/buildroot.html'],
  [
    'hardware/supported-devices.md',
    'Supported Hardware',
    'hardware/support.html'
  ],
  [
    'developer/intro.md',
    'Introduction to Development',
    'developer/introduction.html'
  ],
  [
    'developer/packaging.md',
    'Packaging Applications for dahliaOS',
    'developer/packaging.hmtl'
  ],
  [
    'developer/submitting.md',
    'Submitting Applications',
    'developer/submitting.html'
  ],
  [
    'contribute/CONTRIBUTING.md',
    'Contribution Guidelines',
    'contribute/contributing.html'
  ],
  [
    'contribute/conduct.md',
    'Contribution Guidelines',
    'contribute/conduct.html'
  ],
];

void main(List<String> arguments) {
  var documentInQuestion =
      Process.runSync('cat', ['../../docs/articles/os/linux-based.md'])
          .stdout
          .toString();
  print(
      markdownToHtml(documentInQuestion, inlineSyntaxes: [InlineHtmlSyntax()]));
  var i = 0;
  markdownDocs.forEach((e) => print('position for ${i++} is ${e}'));
}
