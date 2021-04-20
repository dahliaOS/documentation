//TL;DR, Use `dart bin/docgen.dart` to create the HTML version of the docs!
//variables read here:
//DOCGEN_DOCUMENT_GHLINK_GGFF: This is the link to the document's source code
//DOCGEN_DOCUMENT_TITLE_GGFF: This is the name of the document, used in the heading and title
//Declare other in-document variables with the suffix _GGFF to prevent accidental insertion
import 'dart:io';
import 'package:markdown/markdown.dart';
import 'dart:convert';

//Relative path to markdown documents
var relPath = '../../markdown/articles/';
var generatedDocPath = '../../docs/';
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
  ['index.md', 'Documentation', 'index.html'],
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
  ['install/64bit.md', 'dahliaOS 64-bit with UEFI', 'install/efi.html'],
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
    'developer/packaging.html'
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
  ['contribute/conduct.md', 'Code of Conduct', 'contribute/conduct.html'],
];

void createFile(String filename, String contents) {
  File(filename).createSync(recursive: true);
  final file = File(filename).writeAsString(contents);
  print(filename + " was created successfully");
}

void main(List<String> arguments) {
  for (var i = 0; i < markdownDocs.length; i++) {
    var documentInQuestion =
        Process.runSync('cat', [relPath + markdownDocs[i][0]])
            .stdout
            .toString();
    var header = Process.runSync('cat', ['header.html']).stdout.toString();
    var footer = Process.runSync('cat', ['footer.html']).stdout.toString();

    var fullDoc = (header +
            markdownToHtml(documentInQuestion,
                inlineSyntaxes: [InlineHtmlSyntax()]) +
            footer)
        .replaceAll('DOCGEN_DOCUMENT_TITLE_GGFF', markdownDocs[i][1])
        .replaceAll('DOCGEN_DOCUMENT_GHLINK_GGFF', ghRepo + markdownDocs[i][0]);

    print('Generating $i : ${markdownDocs[i]} ');
    createFile(generatedDocPath + markdownDocs[i][2], fullDoc);
  }
}
