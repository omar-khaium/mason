import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  if (context.vars['splash_screen'] as bool) {
    final progress = context.logger.progress('Adding splash screen support...');
    await Process.run('flutter', ['pub', 'add', 'flutter_native_splash'],
        runInShell: true);
    progress.complete();
  }
  if (context.vars['animation'] as bool) {
    final progress = context.logger.progress('Adding animation support...');
    await Process.run('flutter', ['pub', 'add', 'flutter_animate'],
        runInShell: true);
    progress.complete();
  }
}
