import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class DeleteCommentaryUseCase {
  final CommentaryRepository repository;

  DeleteCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required int id,
  }) async {
    return await repository.delete(
      id: id,
    );
  }
}
