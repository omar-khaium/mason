part of '{{#blocs}}{{{.}}}{{/blocs}}_bloc.dart';

abstract class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event extends Equatable {
  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}
class {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}} extends {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}Event {

  const {{#pascalCase}}{{#blocs}}{{{.}}}{{/blocs}}{{/pascalCase}}{{name.pascalCase()}}();
    @override
  List<Object> get props => [];
}
