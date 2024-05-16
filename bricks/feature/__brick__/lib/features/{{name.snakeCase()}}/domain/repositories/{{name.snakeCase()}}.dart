import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

typedef {{name.pascalCase()}}EntityPaginatedResponse = ({
  List<{{name.pascalCase()}}Entity> items,
  int total,
});

abstract class {{name.pascalCase()}}Repository {
  FutureOr<Either<Failure, void>> create({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  });
  
  FutureOr<Either<Failure, void>> delete({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  });
  
  FutureOr<Either<Failure, {{name.pascalCase()}}Entity>> find({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  });

  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> read({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
  });

  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> refresh({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
  });
  
  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> search({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
    required String query,
  });

  FutureOr<Either<Failure, void>> update({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  });
}