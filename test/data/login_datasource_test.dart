import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:teste_flutter_target/data/datasource/login_datasource.dart';

void main() {
  late LoginDatasource datasource;
  late Dio dioClient;
  late DioAdapter dioAdapter;

  const String url = 'https://655c91ec25b76d9884fd8cc3.mockapi.io';
  const credentials = <String, dynamic>{
    'login': 'test',
    'password': 'test',
  };

  setUp(() {
    dioClient = Dio();
    dioAdapter = DioAdapter(dio: dioClient);

    dioClient.httpClientAdapter = dioAdapter;
    datasource = LoginDatasourceImpl(dioClient);
  });

  group('Login Datasource', () {
    test('Do Login', () async {
      dioAdapter.onPost(
        '$url/login',
        (server) => server.reply(200, true),
        data: credentials,
      );

      final result =
          await datasource.login(credentials['login'], credentials['password']);

      expect(result, true);
    });
  });
}
