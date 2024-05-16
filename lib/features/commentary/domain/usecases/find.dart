import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class FindCommentaryUseCase {
  final CommentaryRepository repository;

  FindCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, CommentaryEntity>> call({
    required int id,
  }) async {
    return await repository.find(
      id: id,
    );
  }
}
