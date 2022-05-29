import '../../test_imports.dart';

void main() {
  // experimental widget

  RT_AppRunner? app;

  setUp(() {
    app = createTestApp()..start();
  });

  tearDown(() => app!.stop());

  /*
  |--------------------------------------------------------------------------
  | these tests are to ensure that we're setting display: contents for widgets
  | that must not have any visuals in dom.
  |--------------------------------------------------------------------------
  */

  group('Display contents tests:', () {
    test('Route widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          Route(
            key: GlobalKey('widget'),
            name: 'some-route',
            page: Text('hw'),
          )
        ],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$Route'),
      );
    });

    test('Navigator widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          Navigator(
            key: GlobalKey('widget'),
            routes: [Route(name: 'some-name', page: Text(''))],
          )
        ],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$Navigator'),
      );
    });

    test('EventDetector widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          EventDetector(
            key: GlobalKey('widget'),
            child: Text('hw'),
          )
        ],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$EventDetector'),
      );
    });

    test('InheritedWidget widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [
          RT_InheritedWidget(
            key: GlobalKey('widget'),
            child: Text('hw'),
          )
        ],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$InheritedWidget'),
      );
    });

    test('Stateful widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [RT_StatefulTestWidget(key: GlobalKey('widget'))],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$StatefulWidget'),
      );
    });

    test('Stateless widget', () async {
      var pap = app!;

      await pap.buildChildren(
        widgets: [RT_StatelessWidget(key: GlobalKey('widget'))],
        parentContext: app!.appContext,
      );

      var element = pap.elementByGlobalKey('widget');

      expect(
        element.dataset[Constants.attrWidgetType],
        equals('$StatelessWidget'),
      );
    });
  });
}
