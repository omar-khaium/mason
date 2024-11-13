part of '../config.dart';

Future<void> get {{name.camelCase()}}Dependencies async {
  //! ----------------- Bloc -----------------
  {{#blocs}}sl.registerFactory(
    () => {{#pascalCase}}{{{.}}}{{/pascalCase}}{{name.pascalCase()}}Bloc(
      useCase: sl(),
    ),
  );
  {{/blocs}}

  //! ----------------- UseCase -----------------
  {{#blocs}}sl.registerFactory(
    () => {{#pascalCase}}{{{.}}}{{/pascalCase}}{{name.pascalCase()}}UseCase(
      repository: sl(),
    ),
  );
  {{/blocs}}

  //! ----------------- Repository -----------------
  sl.registerLazySingleton<{{name.pascalCase()}}Repository>(
    () => {{name.pascalCase()}}RepositoryImpl(
      network: sl(),
      remote: sl(),{{#local}}
      local: sl(),{{/local}}{{#auth}}
      auth: sl(),{{/auth}}
    ),
  );

  //! ----------------- Data sources -----------------
  sl.registerLazySingleton<{{name.pascalCase()}}RemoteDataSource>(
    () => {{name.pascalCase()}}RemoteDataSourceImpl(
      client: sl(),
    ),
  );

  {{#local}}sl.registerLazySingleton<{{name.pascalCase()}}LocalDataSource>(
    () => {{name.pascalCase()}}LocalDataSourceImpl(),
  );
  {{/local}}
}
