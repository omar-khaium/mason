import '../../../../core/shared/shared.dart';

class {{name.pascalCase()}}Entity extends Equatable {
  // TODO: implement entity properties
  {{#identifier}}final String guid;{{/identifier}}{{^identifier}}final int id;{{/identifier}}

  {{name.pascalCase()}}Entity({
    {{#identifier}}required this.guid,{{/identifier}}{{^identifier}}required this.id,{{/identifier}}
  });

  factory {{name.pascalCase()}}Entity.create() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [
    // TODO: add entity properties
    {{#identifier}}guid,{{/identifier}}{{^identifier}}id,{{/identifier}}
  ];
}