import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RemoteDataSourceImpl extends {{name.pascalCase()}}RemoteDataSource {
  final Client client;

  {{name.pascalCase()}}RemoteDataSourceImpl({
    required this.client,
  });

  @override
  FutureOr<void> create({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    throw UnimplementedError();
  }
  
  @override
  FutureOr<void> delete({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<{{name.pascalCase()}}Model> find({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> read(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> refresh(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    throw UnimplementedError();
  }
  
  @override
  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> search({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
    required String query,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    throw UnimplementedError();
  }
}