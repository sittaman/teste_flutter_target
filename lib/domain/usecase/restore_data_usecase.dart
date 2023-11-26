import 'package:teste_flutter_target/data/datasource/input_datasource.dart';

class RestoreDataUsecase {
  RestoreDataUsecase(this.datasource);

  final InputDatasourceImpl datasource;

  String call(String key) {
    try {
      return datasource.getData(key);
    } catch (e) {
      return '';
    }
  }
}
