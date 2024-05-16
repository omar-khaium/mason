part of '{{#blocs}}{{{.}}}{{/blocs}}_bloc.dart';

abstract class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event extends Equatable {
  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}
class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}} extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event {
  final {{name.pascalCase()}}Entity {{name.camelCase()}};

  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}({
    required this.{{name.camelCase()}},
  });
    @override
  List<Object> get props => [{{name.camelCase()}}];
}
