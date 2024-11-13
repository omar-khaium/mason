import '../../../../core/shared/shared.dart';{{#auth}}
import '../../../authentication/authentication.dart';{{/auth}}
import '../../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  final NetworkInfo network;{{#auth}}
  final AuthenticationBloc auth;{{/auth}}{{#local}}
  final {{name.pascalCase()}}LocalDataSource local;{{/local}}{{#remote}}
  final {{name.pascalCase()}}RemoteDataSource remote;{{/remote}}

  {{name.pascalCase()}}RepositoryImpl({
    required this.network,{{#auth}}
    required this.auth,{{/auth}}{{#local}}
    required this.local,{{/local}}{{#remote}}
    required this.remote,{{/remote}}
  });

/*
      final result = await local.find(identity: identity);
      return Right(result);
    } on {{name.pascalCase()}}NotFoundInLocalCacheFailure catch (_) {
     */

  {{#blocs}}
  @override
  FutureOr<Either<Failure, void>> {{#camelCase}}{{{.}}}{{/camelCase}}() async {
    try {
      if(await network.online){
        final result = await remote.{{#camelCase}}{{{.}}}{{/camelCase}}({{#auth}}
          token: auth.token!,
        {{/auth}});
        {{#local}}await local.add({{name.camelCase()}}: {{name.camelCase()}});{{/local}}

        return Right(result);
      }
      else{
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
  {{/blocs}}
}