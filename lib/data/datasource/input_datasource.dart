import 'package:shared_preferences/shared_preferences.dart';

abstract class InputDatasource {
  Future<bool> saveData(String key, String data);
  Future<String> getData(String key);
}

class InputDatasourceImpl implements InputDatasource {
  InputDatasourceImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  @override
  Future<bool> saveData(String key, String data) async {
    try {
      await sharedPreferences.setString(key, data);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String> getData(String key) async {
    try {
      return await sharedPreferences.get(key);
    } catch (e) {
      rethrow;
    }
  }
}
