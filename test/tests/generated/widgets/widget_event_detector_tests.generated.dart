// Auto-generated file
//
// Sources of these tests can be found in /test/templates folder

// ignore_for_file: non_constant_identifier_names

part of '../_index_widgets_test.dart';

void widget_event_detector_test() {
  group('Widget specific tests for EventDetector widget:', () {
    RT_AppRunner? app;

    setUp(() {
      app = createTestApp()..start();
    });

    tearDown(() => app!.stop());

    test('EventDetector widget - widgetType override test', () {
      var widget = EventDetector(child: Text('hw'));

      expect(widget.widgetType, equals('$EventDetector'));
    });

    test('EventDetector widget - description test', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          EventDetector(
            key: GlobalKey('widget'),
            child: Text('hw'),
          ),
        ],
        parentContext: pap.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$EventDetector'),
      );
    });
  });
}
