import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class SearchCommentaryUseCase {
  final CommentaryRepository repository;

  SearchCommentaryUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<CommentaryEntity>>> call({
    
    required String query,
  }) async {
    return await repository.search(
      
      query: query,
    );
  }
}
