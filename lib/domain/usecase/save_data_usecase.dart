import 'package:teste_flutter_target/data/datasource/input_datasource.dart';

class SaveDataUsecase {
  SaveDataUsecase(this.datasource);

  final InputDatasourceImpl datasource;

  Future<bool> call(String key, String data) async {
    return await datasource.saveData(key, data);
  }
}
