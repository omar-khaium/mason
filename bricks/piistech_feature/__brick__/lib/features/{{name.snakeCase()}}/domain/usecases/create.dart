import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Create{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Create{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    return await repository.create(
      {{name.camelCase()}}: {{name.camelCase()}},
    );
  }
}
