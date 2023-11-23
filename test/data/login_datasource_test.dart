import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('Login Datasource', () {
    test('Do Login', () async {
      when(mockEndpoint(credentials)).thenAnswer((_) => true);

      final login = await mockDatasource.login();

      expect(login, true);
    });
  });
}
