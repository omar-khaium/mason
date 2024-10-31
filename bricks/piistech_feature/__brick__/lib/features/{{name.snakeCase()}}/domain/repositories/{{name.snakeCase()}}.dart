import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}Repository {
  {{#blocs}}
  FutureOr<Either<Failure, void>> {{#camelCase}}{{{.}}}{{/camelCase}}();
  {{/blocs}}
}