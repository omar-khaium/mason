import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class CreateCommentaryUseCase {
  final CommentaryRepository repository;

  CreateCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required CommentaryEntity commentary,
  }) async {
    return await repository.create(
      commentary: commentary,
    );
  }
}
