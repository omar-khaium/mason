import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  context.logger.info('🛠️  Adding dependencies...');
  await Process.run(
    'flutter',
    [
      'pub',
      'add',
      'cached_network_image',
      'either_dart',
      'equatable',
      'flutter_bloc',
      'flutter_screenutil',
      'get_it',
      'google_fonts',
      'go_router',
      'hydrated_bloc',
      'http',
      'internet_connection_checker',
      'path_provider',
    ],
    runInShell: true,
  );
  context.logger.success('✅ Packages added to pubspec.yaml successfully.');

  await Process.run(
    'dart',
    [
      'format',
      '.',
    ],
    runInShell: true,
  );
  // give me tick-done emoji here: https://emojicombos.com/
  //
  context.logger.success('✅ Code-base formatted successfully.');
}
