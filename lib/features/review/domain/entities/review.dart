import '../../../../core/shared/shared.dart';

class ReviewEntity extends Equatable {
  // TODO: implement entity properties
  final String guid;

  ReviewEntity({
    required this.guid,
  });

  factory ReviewEntity.create() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [
        // TODO: add entity properties
        guid,
      ];
}
