import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class Update{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  Update{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    return await repository.update(
      {{name.camelCase()}}: {{name.camelCase()}},
    );
  }
}
