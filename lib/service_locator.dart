import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_flutter_target/data/datasource/input_datasource.dart';
import 'package:teste_flutter_target/data/datasource/login_datasource.dart';
import 'package:teste_flutter_target/domain/usecase/login_usecase.dart';
import 'package:teste_flutter_target/domain/usecase/restore_data_usecase.dart';
import 'package:teste_flutter_target/domain/usecase/save_data_usecase.dart';

final sl = GetIt.I;

Future<void> init() async {
  sl.registerLazySingleton(() => LoginUsecase(sl()));
  sl.registerLazySingleton(() => SaveDataUsecase(sl()));
  sl.registerLazySingleton(() => RestoreDataUsecase(sl()));

  sl.registerLazySingleton<LoginDatasource>(() => LoginDatasourceImpl(sl()));
  sl.registerLazySingleton<InputDatasource>(() => InputDatasourceImpl(sl()));

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
}
