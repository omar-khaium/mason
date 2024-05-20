part of '../config.dart';

Future<void> get reviewDependencies async {
  //! ----------------- Bloc -----------------

  sl.registerFactory(
    () => CreateReviewBloc(
      useCase: sl(),
    ),
  );

  sl.registerFactory(
    () => UpdateReviewBloc(
      useCase: sl(),
    ),
  );

  //! ----------------- UseCase -----------------

  sl.registerFactory(
    () => CreateReviewUseCase(
      repository: sl(),
    ),
  );

  sl.registerFactory(
    () => UpdateReviewUseCase(
      repository: sl(),
    ),
  );

  //! ----------------- Repository -----------------
  sl.registerLazySingleton<ReviewRepository>(
    () => ReviewRepositoryImpl(
      network: sl(),
      remote: sl(),
      local: sl(),
    ),
  );

  //! ----------------- Data sources -----------------
  sl.registerLazySingleton<ReviewRemoteDataSource>(
    () => ReviewRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<ReviewLocalDataSource>(
    () => ReviewLocalDataSourceImpl(),
  );
}
