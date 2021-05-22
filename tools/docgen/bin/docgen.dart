//TL;DR, Use `dart bin/docgen.dart` to create the HTML version of the docs!
//variables read here:
//DOCGEN_DOCUMENT_GHLINK_GGFF: This is the link to the document's source code
//DOCGEN_DOCUMENT_TITLE_GGFF: This is the name of the document, used in the heading and title
//DOCGEN_DOCUMENT_DESCRIPTION_GGFF: This is the documents description, used in generated embeds and Google
//DOCGEN_DOCUMENT_PATH_GGFF: This is the path to the document, shown in the top.
//DOCGEN_SIDEBAR_LIST_GGFF: This is the content of index.md, parsed, and the top header stripped.
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
    'os/linux.html',
    'Explanation of dahliaOS Linux-based builds, functionality, and features',
  ],
  [
    'index.md',
    'Documentation',
    'index.html',
    'dahliaOS Documentation overview'
  ],
  [
    'pangolin/Pangolin-Desktop.md',
    'The Pangolin Desktop',
    'pangolin/pangolin.html',
    'Development History, features, and functionality of the Pangolin Desktop'
  ],
  [
    'pangolin/Pangolin-Linux.md',
    'Pangolin Desktop on Linux',
    'pangolin/pangolin-linux.html',
    'Installing the Pangolin Desktop on non-dahliaOS Linux systems'
  ],
  [
    'install/QEMU.md',
    'Running dahliaOS in QEMU',
    'install/qemu.html',
    'How to run dahliaOS Linux inside of the QEMU Emulator'
  ],
  [
    'install/64bit.md',
    'dahliaOS 64-bit with UEFI',
    'install/efi.html',
    'How to run dahliaOS Linux on EFI computers'
  ],
  [
    'install/64bit-Legacy.md',
    'dahliaOS 64-bit with Legacy BIOS',
    'install/legacy.html',
    'How to run dahliaOS Linux on legacy computers'
  ],
  [
    'build/buildroot.md',
    'The Buildroot Toolchain',
    'build/buildroot.html',
    'Information and usage of the Buildroot tool, used to compile dahliaOS'
  ],
  [
    'hardware/supported-devices.md',
    'Supported Hardware',
    'hardware/support.html',
    'List of dahliaOS Supported Devices'
  ],
  [
    'developer/intro.md',
    'Introduction to Development',
    'developer/introduction.html',
    'Introduction to developing applications for dahliaOS'
  ],
  [
    'developer/packaging.md',
    'Packaging Applications for dahliaOS',
    'developer/packaging.html',
    'Packaging guide for dahliaOS applications'
  ],
  [
    'developer/submitting.md',
    'Submitting Applications',
    'developer/submitting.html',
    'How to get your applications into the official repositories'
  ],
  [
    'contribute/CONTRIBUTING.md',
    'Contribution Guidelines',
    'contribute/contributing.html',
    'Best practices for conduct and development of dahliaOS and related solutions'
  ],
  [
    'contribute/conduct.md',
    'Code of Conduct',
    'contribute/conduct.html',
    'Rules to ensure an inclusive and kind community'
  ],
];

void createFile(String filename, String contents) {
  File(filename).createSync(recursive: true);
  final file = File(filename).writeAsString(contents);
  print(filename + ' was created successfully');
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

void main(List<String> arguments) async {
  for (var i = 0; i < markdownDocs.length; i++) {
    var documentInQuestion =
        await File(relPath + markdownDocs[i][0]).readAsString();
    var header = await File("header.html").readAsString();
    var book = await File(relPath + "index.md").readAsString();
    var footer = await File("footer.html").readAsString();
    var documentPath = 'Documentation > ' +
        markdownDocs[i][0].split('/')[0].capitalize() +
        ' > ' +
        markdownDocs[i][1];
    var fullDoc = (header +
            markdownToHtml(documentInQuestion,
                inlineSyntaxes: [InlineHtmlSyntax()]) +
            footer)
        .replaceAll('DOCGEN_DOCUMENT_TITLE_GGFF', markdownDocs[i][1])
        .replaceAll('DOCGEN_DOCUMENT_GHLINK_GGFF', ghRepo + markdownDocs[i][0])
        .replaceAll('DOCGEN_DOCUMENT_DESCRIPTION_GGFF', markdownDocs[i][3])
        .replaceAll('DOCGEN_DOCUMENT_SIDEBAR_LIST_GGFF', markdownToHtml(book).replaceAll(RegExp("<h2>.*?</h2>"), ""))
        .replaceAll('DOCGEN_DOCUMENT_PATH_GGFF', documentPath);

    print('Generating $i : ${markdownDocs[i]} ');
    createFile(generatedDocPath + markdownDocs[i][2], fullDoc);
  }
}
