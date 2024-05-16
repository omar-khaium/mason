import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

part '{{#blocs}}{{{.}}}{{/blocs}}_event.dart';
part '{{#blocs}}{{{.}}}{{/blocs}}_state.dart';

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Bloc extends Bloc<{{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event, {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State> {
  final {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}UseCase useCase;
  {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Bloc({required this.useCase}) : super(const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Initial()) {
    on<{{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}>((event, emit) async {
      emit(const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Loading());
      final result = await useCase({{name.camelCase()}}: event.{{name.camelCase()}});
      result.fold(
        (failure) => emit({{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Error(failure: failure)),
        ({{name.camelCase()}}) => emit({{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Done({{name.camelCase()}}: {{name.camelCase()}})),
      );
    });
  }
}
