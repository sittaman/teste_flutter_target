import 'package:teste_flutter_target/data/datasource/login_datasource.dart';

class LoginUsecase {
  LoginUsecase(this.datasource);

  final LoginDatasource datasource;

  Future<bool> call(String login, String password) async {
    try {
      final bool result = await datasource.login(login, password);
      return result;
    } catch (e) {
      return false;
    }
  }
}
