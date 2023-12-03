import "package:mobx/mobx.dart";
import "package:teste_flutter_target/domain/usecase/login_usecase.dart";
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  LoginControllerBase({required this.loginUsecase});

  final LoginUsecase loginUsecase;

  @observable
  late bool loginSuccess;

  @action
  login(String login, String password) async {
    loginSuccess = await loginUsecase(login, password);
  }
}
