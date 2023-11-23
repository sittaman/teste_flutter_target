import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('Input Datasource', () {
    test('Store data', () async {
      when(mockedSharedPreferences(data)).thenAnswer((_) => true);

      final operation = await mockDatasource.save(data);

      expect(operation, true);
    });

    test('Restore data', () async {
      when(mockedSharedPreferences(key)).thenAnswer((_) => dataFixture);

      final data = await mockDatasource.restore(key);

      expect(data, dataFixture);
    });
  });
}
