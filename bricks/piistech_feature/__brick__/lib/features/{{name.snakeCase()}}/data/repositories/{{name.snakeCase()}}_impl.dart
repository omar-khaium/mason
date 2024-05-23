import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  final NetworkInfo network;{{#local}}
  final {{name.pascalCase()}}LocalDataSource local;
  {{/local}}
  final {{name.pascalCase()}}RemoteDataSource remote;

  {{name.pascalCase()}}RepositoryImpl({
    required this.network,
    {{#local}}
    required this.local,
    {{/local}}
    required this.remote,
  });

  @override
  FutureOr<Either<Failure, void>> create({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    try {
      if(await network.online){
        final result = await remote.create({{name.camelCase()}}: {{name.camelCase()}});
        {{#local}}
        await local.add({{name.camelCase()}}: {{name.camelCase()}});
        {{/local}}

        return Right(result);
      }
      else{
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, void>> delete({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  }) async {
    try {
      if(await network.online){
        await remote.delete(
          {{#identifier}}
          guid: guid,
          {{/identifier}}
          {{^identifier}}
          id: id,
          {{/identifier}}
        );
        {{#local}}
        await local.remove(
          {{#identifier}}
          guid: guid,
          {{/identifier}}
          {{^identifier}}
          id: id,
          {{/identifier}}
        );
        {{/local}}

        return const Right(null);
      }
      else{
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, {{name.pascalCase()}}Entity>> find({
    {{#identifier}}
    required String guid,
    {{/identifier}}
    {{^identifier}}
    required int id,
    {{/identifier}}
  }) async {
    try {
      {{#local}} 
      final result = await local.find(
        {{#identifier}}
        guid: guid,
        {{/identifier}}
        {{^identifier}}
        id: id,
        {{/identifier}}
      );
      return Right(result);
      {{/local}}
      {{^local}} 
      if(await network.online){
        final result = await remote.find(
          {{#identifier}}
          guid: guid,
          {{/identifier}}
          {{^identifier}}
          id: id,
          {{/identifier}}
        );

        return Right(result);
      }
      else{
        return Left(NoInternetFailure());
      }
      {{/local}}
    } on {{name.pascalCase()}}NotFoundInLocalCacheFailure catch (_) {
      {{#local}}
      if(await network.online){
        final result = await remote.find(
          {{#identifier}}
          guid: guid,
          {{/identifier}}
          {{^identifier}}
          id: id,
          {{/identifier}}
        );
        await local.add({{name.camelCase()}}: result);
        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
      {{/local}}
      {{^local}} 
      return Left(_);
      {{/local}}
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> read(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    try {
      if(await network.online){
        final result = await remote.read(
          {{#pagination}}
          page: page,
          limit: limit,
          {{/pagination}}
        );
        {{#local}}
        await local.addAll(items: result{{#pagination}}.items{{/pagination}});
        {{/local}}

        {{#pagination}}
        return Right((items: result.items, total: result.total));
        {{/pagination}}
        {{^pagination}}
        return Right(result);      
        {{/pagination}}
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> refresh(
    {{#pagination}}{
    required int page,
    required int limit,
    }{{/pagination}}
  ) async {
    try {
      if(await network.online){
        {{#local}}
        await local.removeAll();
        {{/local}}
        final result = await remote.refresh(
          {{#pagination}}
          page: page,
          limit: limit,
          {{/pagination}}        
        );
        {{#local}}
        await local.addAll(items: result{{#pagination}}.items{{/pagination}});
        {{/local}}

        {{#pagination}}
        return Right((items: result.items, total: result.total));
        {{/pagination}}
        {{^pagination}}
        return Right(result);
        {{/pagination}}
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  FutureOr<Either<Failure, {{#pagination}}{{name.pascalCase()}}EntityPaginatedResponse{{/pagination}}{{^pagination}}List<{{name.pascalCase()}}Entity>{{/pagination}}>> search({
    {{#pagination}}
    required int page,
    required int limit,
    {{/pagination}}
    required String query,
  }) async {
    try {

      if(await network.online){
        final result = await remote.search(
          {{#pagination}}
          page: page,
          limit: limit,
          {{/pagination}}
          query: query,
        );
        {{#local}}
        await local.addAll(items: result{{#pagination}}.items{{/pagination}});
        {{/local}}


        {{#pagination}}
        return Right((items: result.items, total: result.total));
        {{/pagination}}
        {{^pagination}}
        return Right(result);
        {{/pagination}}
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, void>> update({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    try {
      if(await network.online){
        final result = await remote.update({{name.camelCase()}}: {{name.camelCase()}});
        {{#local}}
        await local.update({{name.camelCase()}}: {{name.camelCase()}});
        {{/local}}

        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
}