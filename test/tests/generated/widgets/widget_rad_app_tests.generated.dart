// Auto-generated file
//
// Sources of these tests can be found in /test/templates folder

// ignore_for_file: non_constant_identifier_names

part of '../_index_widgets_test.dart';

void widget_rad_app_test() {
  group('Widget specific tests for RadApp widget:', () {
    RT_AppRunner? app;

    setUp(() {
      app = createTestApp()..start();
    });

    tearDown(() => app!.stop());

    test('RadApp widget - widgetType override test', () {
      var widget = RadApp(child: Text(''));

      expect(widget.widgetType, equals('$RadApp'));
    });

    test('RadApp widget - description test', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          RadApp(
            key: GlobalKey('widget'),
            child: Text('hw'),
          ),
        ],
        parentContext: pap.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$RadApp'),
      );
    });
  });
}
