import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';

String now() {
  // remove 20 from 2022 so 2022 becomes 22
  String nowYear = DateTime.now().year.toString().substring(2);
  // if month is less than 10, add a 0 before the month
  String nowMonth = DateTime.now().month < 10
      ? '0${DateTime.now().month}'
      : DateTime.now().month.toString();

  // if day is less than 10, add a 0 before the month
  String nowDay = DateTime.now().day < 10
      ? '0${DateTime.now().day}'
      : DateTime.now().day.toString();
  return '$nowYear$nowMonth$nowDay';
}

String sevenDaysAgo() {
  // remove 20 from 2022 so 2022 becomes 22
  String sevenDaysAgoYear =
      DateTime.now().subtract(Duration(days: 7)).year.toString().substring(2);

  // if month is less than 10, add a 0 before the month
  String sevenDaysAgoMonth =
      DateTime.now().subtract(Duration(days: 7)).month < 10
          ? '0${DateTime.now().subtract(Duration(days: 7)).month}'
          : DateTime.now().subtract(Duration(days: 7)).month.toString();

  // if day is less than 10, add a 0 before the month
  String sevenDaysAgoDay = DateTime.now().subtract(Duration(days: 7)).day < 10
      ? '0${DateTime.now().subtract(Duration(days: 7)).day}'
      : DateTime.now().subtract(Duration(days: 7)).day.toString();

  return '$sevenDaysAgoYear$sevenDaysAgoMonth$sevenDaysAgoDay';
}

makeChangeLog() async {
  var response = await get(Uri.parse(
      'https://api.github.com/repos/dahliaOS/documentation/compare/v${await sevenDaysAgo()}...HEAD'));
  var jsonfile = response.body.toString();
  var deocodedJson = json.decode(jsonfile);

  // do git pull
  await Process.run('git', ['pull']);
  // for each commit, get the commit message and the commit author name

  _get_commits() sync* {
    for (var commit in deocodedJson['commits']) {
      yield '- [${commit['commit']['author']['name']}](https://github.com/${commit['author']['login']}) **${commit['commit']['message']}**';
    }
  }

  // for each commit write it to file.md file in the project root
  await File('.github/release.md').writeAsString(
      '# dahliaOS documentation v${await now()}\n\n## Changes\n${await _get_commits().toList().join('\n')}');

  // commit the changes
  await Process.run('git', ['config', '--global', 'user.name', 'dahliaOS-bot']);
  await Process.run('git',
      ['config', '--global', 'user.email', 'dahliaosofficial@gmail.com']);
  await Process.run('git', ['add', '--all']);
  await Process.run(
      'git', ['commit', '-m', '"bump changes to v${await now()}"']);
  await Process.run('git', ['push']);
}

void main() {
  makeChangeLog();
}
