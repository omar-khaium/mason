import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RemoteDataSourceImpl extends {{name.pascalCase()}}RemoteDataSource {
  final Client client;

  {{name.pascalCase()}}RemoteDataSourceImpl({
    required this.client,
  });
  
  {{#blocs}}
  @override
  FutureOr<void> {{#camelCase}}{{{.}}}{{/camelCase}}({{#auth}}{
    required String token,
  }{{/auth}}) async {
    throw UnimplementedError();
  }
  {{/blocs}}
}