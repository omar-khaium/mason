import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class RefreshAllCommentaryUseCase {
  final CommentaryRepository repository;

  RefreshAllCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<CommentaryEntity>>> call(
    
  ) async {
    return await repository.refresh(
      
    );
  }
}
