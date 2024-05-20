import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Read{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Read{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> call(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    return await repository.read(
      {{#pagination}}
      page: page,
      limit: limit,
      {{/pagination}}
    );
  }
}
