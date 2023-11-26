import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_flutter_target/data/datasource/input_datasource.dart';

import 'input_datasource_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  group('Input Datasource', () {
    late InputDatasource datasource;
    MockSharedPreferences mockSharedPreferences = MockSharedPreferences();

    setUp(() async {
      datasource = InputDatasourceImpl(mockSharedPreferences);
    });

    test('Store data', () async {
      when(mockSharedPreferences.setString(any, any))
          .thenAnswer((_) async => true);

      final operation = await datasource.saveData('test', 'test');

      expect(operation, true);
    });

    test('Restore data', () {
      when(mockSharedPreferences.get('test')).thenReturn('test');

      final data = datasource.getData('test');

      expect(data, 'test');
    });
  });
}
