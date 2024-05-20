import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Find{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Find{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, {{name.pascalCase()}}Entity>> call({
    {{#identifier}}required String guid{{/identifier}}{{^identifier}}required int id{{/identifier}},
  }) async {
    return await repository.find(
      {{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}}: {{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}},
    );
  }
}
