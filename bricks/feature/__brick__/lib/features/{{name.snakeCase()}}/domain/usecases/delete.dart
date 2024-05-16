import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Delete{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Delete{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    {{#identifier}}required String guid{{/identifier}}{{^identifier}}required int id{{/identifier}},
  }) async {
    return await repository.delete(
      {{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}}: {{#identifier}}guid{{/identifier}}{{^identifier}}id{{/identifier}},
    );
  }
}
