import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Search{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Search{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> call({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
    required String query,
  }) async {
    return await repository.search(
      {{#pagination}}
      page: page,
      limit: limit,
      {{/pagination}}
      query: query,
    );
  }
}
