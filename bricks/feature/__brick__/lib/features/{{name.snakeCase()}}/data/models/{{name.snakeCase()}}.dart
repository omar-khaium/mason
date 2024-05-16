import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Model extends {{name.pascalCase()}}Entity {
  // TODO: implement model properties
  {{name.pascalCase()}}Model({
    required super.{{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}},
  });

  factory {{name.pascalCase()}}Model.parse({
    required Map<String, dynamic> map,
  }) {
    // TODO: implement parse
    throw UnimplementedError();
  }
}