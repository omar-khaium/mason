import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

class CommentaryRepositoryImpl extends CommentaryRepository {
  
  final CommentaryRemoteDataSource remote;

  CommentaryRepositoryImpl({
    
    required this.remote,
  });

  @override
  FutureOr<Either<Failure, void>> create({
    required CommentaryEntity commentary,
  }) async {
    try {
      final result = await remote.create(commentary: commentary);
      

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, void>> delete({
    
    
    required int id,
    
  }) async {
    try {
      final result = remote.delete(
        
        
        id: id,
        
      );
      

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, CommentaryEntity>> find({
    
    
    required int id,
    
  }) async {
    try {
      
       
      final result = await remote.find(
        
        
        id: id,
        
      );
      

      return Right(result);
    } on CommentaryNotFoundInLocalCacheFailure catch (_) {
      
       
      return Left(e);
      
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, List<CommentaryEntity>>> read(
    
  ) async {
    try {
      final result = await remote.read(
        
      );
      

      
      
      return Right(result);
      
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, List<CommentaryEntity>>> refresh(
    
  ) async {
    try {
      final result = await remote.refresh(
                
      );
      

      
      
      return Right(result);
      
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, List<CommentaryEntity>>> search({
    
    required String query,
  }) async {
    try {
      final result = await remote.search(
        
        query: query,
      );
      


      
      
      return Right(result);
      
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, void>> update({
    required CommentaryEntity commentary,
  }) async {
    try {
      final result = await remote.update(commentary: commentary);
      

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}