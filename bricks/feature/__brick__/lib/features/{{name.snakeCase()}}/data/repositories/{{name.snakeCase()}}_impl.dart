import '../../../../core/shared/shared.dart';
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  {{#local}}
  final {{name.pascalCase()}}LocalDataSource local;
  {{/local}}
  final {{name.pascalCase()}}RemoteDataSource remote;

  {{name.pascalCase()}}RepositoryImpl({
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
      final result = await remote.create({{name.camelCase()}}: {{name.camelCase()}});
      {{#local}}
      await local.add({{name.camelCase()}}: {{name.camelCase()}});
      {{/local}}

      return Right(result);
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
      final result = remote.delete(
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

      return Right(result);
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
      {{/local}}
      {{^local}} 
      final result = await remote.find(
        {{#identifier}}
        guid: guid,
        {{/identifier}}
        {{^identifier}}
        id: id,
        {{/identifier}}
      );
      {{/local}}

      return Right(result);
    } on {{name.pascalCase()}}NotFoundInLocalCacheFailure catch (_) {
      {{#local}} 
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
      {{/local}}
      {{^local}} 
      return Left(e);
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
      final result = await remote.read(
        {{#pagination}}
        page: page,
        limit: limit,
        {{/pagination}}
      );
      {{#local}}
      await local.addAll(items: result.items);
      {{/local}}

      {{#pagination}}
      return Right((items: result.items, total: result.total));
      {{/pagination}}
      {{^pagination}}
      return Right(result);
      {{/pagination}}
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
      await local.addAll(items: result.items);
      {{/local}}

      {{#pagination}}
      return Right((items: result.items, total: result.total));
      {{/pagination}}
      {{^pagination}}
      return Right(result);
      {{/pagination}}
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
      final result = await remote.search(
        {{#pagination}}
        page: page,
        limit: limit,
        {{/pagination}}
        query: query,
      );
      {{#local}}
      await local.addAll(items: result.items);
      {{/local}}


      {{#pagination}}
      return Right((items: result.items, total: result.total));
      {{/pagination}}
      {{^pagination}}
      return Right(result);
      {{/pagination}}
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, void>> update({
    required {{name.pascalCase()}}Entity {{name.camelCase()}},
  }) async {
    try {
      final result = await remote.update({{name.camelCase()}}: {{name.camelCase()}});
      {{#local}}
      await local.update({{name.camelCase()}}: {{name.camelCase()}});
      {{/local}}

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}