import '../../../../core/shared/shared.dart';

class CommentaryEntity extends Equatable {
  // TODO: implement entity properties
  final int id;

  CommentaryEntity({
    required this.id,
  });

  factory CommentaryEntity.create() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [
    // TODO: add entity properties
    id,
  ];
}