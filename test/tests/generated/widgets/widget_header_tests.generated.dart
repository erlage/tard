// Auto-generated file
//
// Sources of these tests can be found in /test/templates folder

// ignore_for_file: non_constant_identifier_names

part of '../_index_widgets_test.dart';

void widget_header_test() {
  group('Widget specific tests for Header widget:', () {
    RT_AppRunner? app;

    setUp(() {
      app = createTestApp()..start();
    });

    tearDown(() => app!.stop());

    test('Header widget - widgetType override test', () {
      expect(Header().widgetType, equals('$Header'));
    });
  });
}
