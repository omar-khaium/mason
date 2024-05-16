import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

typedef CommentaryEntityPaginatedResponse = ({
  List<CommentaryEntity> items,
  int total,
});

abstract class CommentaryRepository {
  FutureOr<Either<Failure, void>> create({
    required CommentaryEntity commentary,
  });
  
  FutureOr<Either<Failure, void>> delete({
    
    
    required int id,
    
  });
  
  FutureOr<Either<Failure, CommentaryEntity>> find({
    
    
    required int id,
    
  });

  FutureOr<Either<Failure, List<CommentaryEntity>>> read({
    
  });

  FutureOr<Either<Failure, List<CommentaryEntity>>> refresh({
    
  });
  
  FutureOr<Either<Failure, List<CommentaryEntity>>> search({
    
    required String query,
  });

  FutureOr<Either<Failure, void>> update({
    required CommentaryEntity commentary,
  });
}