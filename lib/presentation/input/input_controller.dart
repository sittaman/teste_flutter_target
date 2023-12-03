import 'package:mobx/mobx.dart';
import 'package:teste_flutter_target/domain/usecase/restore_data_usecase.dart';
import 'package:teste_flutter_target/domain/usecase/save_data_usecase.dart';
part 'input_controller.g.dart';

class InputController = InputControllerBase with _$InputController;

abstract class InputControllerBase with Store {
  InputControllerBase(
      {required this.restoreDataUsecase, required this.saveDataUsecase});

  final RestoreDataUsecase restoreDataUsecase;
  final SaveDataUsecase saveDataUsecase;
}
