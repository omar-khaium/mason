part of '{{#blocs}}{{{.}}}{{/blocs}}_bloc.dart';

abstract class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State extends Equatable {
  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Initial extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State {
  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Initial();
}

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Loading extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State {
  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Loading();
}

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Error extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State {
  final Failure failure;

  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Error({
    required this.failure,
  });

  @override
  List<Object> get props => [failure];
}

class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Done extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}State {
  final {{name.pascalCase()}}Entity {{name.camelCase()}};

  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Done({required this.{{name.camelCase()}}});

  @override
  List<Object> get props => [{{name.camelCase()}}];
}