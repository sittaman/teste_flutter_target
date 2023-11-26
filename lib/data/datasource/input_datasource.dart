import 'package:shared_preferences/shared_preferences.dart';

abstract class InputDatasource {
  Future<bool> saveData(String key, String data);
  String getData(String key);
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
  String getData(String key) {
    try {
      return sharedPreferences.get(key) as String;
    } catch (e) {
      rethrow;
    }
  }
}
