import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class UpdateCommentaryUseCase {
  final CommentaryRepository repository;

  UpdateCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required CommentaryEntity commentary,
  }) async {
    return await repository.update(
      commentary: commentary,
    );
  }
}
