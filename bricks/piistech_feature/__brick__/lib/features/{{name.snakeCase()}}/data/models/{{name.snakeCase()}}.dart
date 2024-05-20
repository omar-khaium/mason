import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Model extends {{name.pascalCase()}}Entity {
  // TODO: implement model properties
  {{name.pascalCase()}}Model({
    required super.{{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}},
  });

  factory {{name.pascalCase()}}Model.parse({
    required Map<String, dynamic> map,
  }) {
    try {
    // TODO: implement parse
    throw UnimplementedError();
    } catch (e, stackTrace) {
      throw {{name.pascalCase()}}ModelParseFailure(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}