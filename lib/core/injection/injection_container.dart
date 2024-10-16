
import 'package:flashy/feature/home/data/datasource/remote/home_remote.dart';
import 'package:flashy/feature/home/data/repository/home_repository_impl.dart';
import 'package:flashy/feature/home/domain/repository/home_repository.dart';
import 'package:flashy/feature/home/presentation/cubit/newest_products_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/domain/usecase/newest_products_usecase.dart';

/// Eng.Nour Othman(meory)*

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => NewestProductsCubit(usecase: sl()));
  sl.registerLazySingleton(() => NewestProductsUsecase(repository: sl()));
  sl.registerLazySingleton<HomeRepository>(
          () => HomeRepositoryImpl(remote: sl()));
  sl.registerLazySingleton<HomeRemote>(() => HomeRemoteImpl());
}
