import '../../../../core/shared/shared.dart';

class {{name.pascalCase()}}Entity extends Equatable {
  // TODO: implement entity properties
  final Identity identity;

  {{name.pascalCase()}}Entity({
    required this.identity,
  });

  @override
  List<Object?> get props => [
    // TODO: add entity properties
    identity,
  ];
}