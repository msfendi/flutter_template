import 'package:flutter_template/infrastructure/datasource/user/user_datasource.dart';
import 'package:flutter_template/infrastructure/repositories/user/user_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_template/core/networks/api_client.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';
import 'package:flutter_template/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:flutter_template/infrastructure/datasource/auth/auth_remote_datasource.dart';
import 'package:flutter_template/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:flutter_template/routing/route.dart';

GetIt locator = GetIt.instance;


Future<void> setupInjector() async {
  /// Route
  locator.registerSingleton<AppRouter>(AppRouter());

  /// Registering flavors
  locator.registerSingleton(FlavorUtils()..initType());
  /// Reinitialize flavor
  await flavor.initType();

  /// Core api client
  locator.registerLazySingleton(() => ApiClient());

  /// Registering data source
  locator.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSource(),
  );
  locator.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(locator<ApiClient>()),
  );
  locator.registerLazySingleton<UserDataSource>(
    () => UserDataSource(locator<ApiClient>()),
  );

  /// Register bloc
  // locator.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  locator.registerLazySingleton<AuthRepositoryImpl>(
    () => AuthRepositoryImpl(
      remoteDataSource: locator<AuthRemoteDataSource>(),
      localDataSource: locator<AuthLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton<UserRepositoryImpl>(
    () => UserRepositoryImpl(
      locator<UserDataSource>(),
    ),
  );
}