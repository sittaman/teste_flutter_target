import 'package:teste_flutter_target/data/datasource/input_datasource.dart';

class RestoreDataUsecase {
  RestoreDataUsecase(this.datasource);

  final InputDatasourceImpl datasource;

  Future<String> call(String key) async {
    try {
      return await datasource.getData(key);
    } catch (e) {
      return '';
    }
  }
}
