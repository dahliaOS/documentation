// Walk the `markdown/articles` directory.

import 'dart:io';

import 'package:front_matter/front_matter.dart' as fm;

class DocsArticle {
  final String inFileName;
  final String name;
  final String outFileName;
  final String description;

  DocsArticle({
    String inFileName,
    this.name,
    this.outFileName,
    this.description
  }) : this.inFileName = inFileName.replaceFirst('/', '');

  @Deprecated('Use the values directly instead')
  String operator [](int value) {
    switch (value) {
      case 0:
        return inFileName;
        break;
      case 1:
        return name;
        break;
      case 2:
        return outFileName;
        break;
      case 3:
        return description;
        break;
      default:
        throw IndexError(value, false);
    }
  }

  @override
  String toString() {
    return '[$inFileName, $name, $outFileName, $description]';
  }
}

extension CapitalizeStringExtension on String {
  String capitalize() {
    if (this.isEmpty) return this;
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

Future<List<DocsArticle>> walkDocs() async {
  const _root = '../../markdown/articles';
  List<FileSystemEntity> _files = [];
  await Directory(_root).list(recursive: true).listen((event) {_files.add(event);}).asFuture();
  List<File> files = _files.whereType<File>().toList();
  List<DocsArticle> articles = [];
  for (var file in files) {
    var frontMatter = fm.parse(file.readAsStringSync()).data ?? {};
    var path = file.path.replaceFirst(_root, "");
    articles.add(DocsArticle(
      inFileName: path,
      outFileName: frontMatter['permalink'] ?? path.replaceFirst('.md', '.html'),
      description: frontMatter['summary'] ?? '',
      name: frontMatter['title'] ?? 'Document'
    ));
  }
  return articles;
}

Future<List<T>> walkDirectoryFor<T extends FileSystemEntity>(String path) async {
  List<FileSystemEntity> _files = [];
  await Directory(path).list(recursive: true).listen((event) {_files.add(event);}).asFuture();
  return _files.whereType<T>().toList();
}