import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class ReadAllCommentaryUseCase {
  final CommentaryRepository repository;

  ReadAllCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<CommentaryEntity>>> call(
    
  ) async {
    return await repository.read(
      
    );
  }
}
