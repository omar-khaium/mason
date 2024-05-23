part of 'failure.dart';

class {{name.pascalCase()}}ModelParseFailure extends Failure {
  {{name.pascalCase()}}ModelParseFailure({
    required super.message,
    required super.stackTrace,
  });
}

class {{name.pascalCase()}}NotFoundInLocalCacheFailure extends Failure {
  {{name.pascalCase()}}NotFoundInLocalCacheFailure() : super(
    message: '{{name.pascalCase()}} not found in local cache.',
  );
}