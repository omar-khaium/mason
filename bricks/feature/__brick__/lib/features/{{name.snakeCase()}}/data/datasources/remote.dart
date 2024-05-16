import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

typedef {{name.pascalCase()}}ModelPaginatedResponse = ({
  List<{{name.pascalCase()}}Model> items,
  int total,
});

abstract class {{name.pascalCase()}}RemoteDataSource {
  FutureOr<void> create({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  });
  
  FutureOr<void> delete({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  });
  
  FutureOr<{{name.pascalCase()}}Model> find({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  });

  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> read(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  );

  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> refresh(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  );
  
  FutureOr<{{#pagination}}{{name.pascalCase()}}ModelPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Model>{{/pagination}}> search({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
    required String query,
  });

  FutureOr<void> update({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  });
}