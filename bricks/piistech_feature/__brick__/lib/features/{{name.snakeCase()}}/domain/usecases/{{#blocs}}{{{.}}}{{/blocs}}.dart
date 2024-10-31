import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repository repository;

  {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}UseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call() async {
    return await repository.{{#camelCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/camelCase}}();
  }
}
