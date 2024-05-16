import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class CommentaryRemoteDataSourceImpl extends CommentaryRemoteDataSource {
  final Client client;

  CommentaryRemoteDataSourceImpl({
    required this.client,
  });

  @override
  FutureOr<void> create({
    required CommentaryEntity commentary,
  }) async {
    throw UnimplementedError();
  }
  
  @override
  FutureOr<void> delete({
    
    
    required int id,
    
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<CommentaryModel> find({
    
    
    required int id,
    
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<CommentaryModel>> read(
    
  ) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<CommentaryModel>> refresh(
    
  ) async {
    throw UnimplementedError();
  }
  
  @override
  FutureOr<List<CommentaryModel>> search({
    
    required String query,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update({
    required CommentaryEntity commentary,
  }) async {
    throw UnimplementedError();
  }
}