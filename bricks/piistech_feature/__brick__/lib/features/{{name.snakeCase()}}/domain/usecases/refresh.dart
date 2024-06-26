import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Refresh{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Refresh{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> call(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    return await repository.refresh(
      {{#pagination}}
      page: page,
      limit: limit,
      {{/pagination}}
    );
  }
}
