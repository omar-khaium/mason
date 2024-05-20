import 'dart:convert';
import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final String name = context.vars['name'].toString();

  // Add failure class
  final failureBuffer = StringBuffer();
  final failureFile = File('lib/core/shared/error/failure/failure.dart');
  await for (final line in readLines(failureFile)) {
    if (line != 'part \'${name.snakeCase}.dart\';') {
      failureBuffer.writeln(line);
    }
    if (line.contains('//! mason:linking-failures')) {
      failureBuffer.writeln('part \'${name.snakeCase}.dart\';');
    }
    if (line.contains('//! mason:linking-dependencies')) {
      failureBuffer.writeln('_${name.snakeCase},');
    }
  }
  await failureFile.writeAsString('$failureBuffer');

  // Add dependency relation
  final dependencyBuffer = StringBuffer();
  final dependencyFile = File('lib/core/config/dependencies.dart');
  await for (final line in readLines(dependencyFile)) {
    if (line != '${name.camelCase}Dependencies,') {
      dependencyBuffer.writeln(line);
    }
    if (line.contains('//! mason:linking-dependencies')) {
      dependencyBuffer.writeln('${name.camelCase}Dependencies,');
    }
  }
  await dependencyFile.writeAsString('$dependencyBuffer');

  if (context.vars['extension']) {
    final configBuffer = StringBuffer();
    final configFile = File('lib/core/config/config.dart');
    await for (final line in readLines(configFile)) {
      if (line != 'import \'../../features/${name.snakeCase}/${name.snakeCase}.dart\';' &&
          line != 'part \'dependencies/${name.snakeCase}.dart\';') {
        configBuffer.writeln(line);
      }
      if (line.contains('//! mason:linking-imports')) {
        configBuffer.writeln('import \'../../features/${name.snakeCase}/${name.snakeCase}.dart\';');
      }
      if (line.contains('//! mason:linking-dependencies')) {
        configBuffer.writeln('part \'dependencies/${name.snakeCase}.dart\';');
      }
    }
    await configFile.writeAsString('$configBuffer');
  }

  await Process.run(
    'dart',
    [
      'format',
      '.',
    ],
    runInShell: true,
  );
}

Stream<String> readLines(File file) => file.openRead().transform(utf8.decoder).transform(const LineSplitter());
