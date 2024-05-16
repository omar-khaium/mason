import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

typedef CommentaryModelPaginatedResponse = ({
  List<CommentaryModel> items,
  int total,
});

abstract class CommentaryRemoteDataSource {
  FutureOr<void> create({
    required CommentaryEntity commentary,
  });
  
  FutureOr<void> delete({
    
    
    required int id,
    
  });
  
  FutureOr<CommentaryModel> find({
    
    
    required int id,
    
  });

  FutureOr<List<CommentaryModel>> read(
    
  );

  FutureOr<List<CommentaryModel>> refresh(
    
  );
  
  FutureOr<List<CommentaryModel>> search({
    
    required String query,
  });

  FutureOr<void> update({
    required CommentaryEntity commentary,
  });
}