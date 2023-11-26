import 'package:dio/dio.dart';

abstract class LoginDatasource {
  Future<bool> login(String login, String password);
}

class LoginDatasourceImpl implements LoginDatasource {
  LoginDatasourceImpl(this.dioClient);

  final Dio dioClient;

  @override
  Future<bool> login(String login, String password) async {
    try {
      final response = await dioClient.get(path);

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
