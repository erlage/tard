// Auto-generated file
//
// Sources of these tests can be found in /test/templates folder

// ignore_for_file: non_constant_identifier_names

part of '_html_tests_index_test.dart';

void html_input_radio_test() {
  group('HTML InputRadio tests:', () {
    RT_AppRunner? app;

    setUp(() {
      app = createTestApp()..start();
    });

    tearDown(() => app!.stop());

    test('should set id', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: Key('some-key'), id: 'some-id'),
          InputRadio(key: LocalKey('some-local-key'), id: 'some-local-id'),
          InputRadio(key: GlobalKey('some-global-key'), id: 'some-global-id'),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = app!.elementByKey('some-key', RT_TestBed.rootContext);
      var element2 = app!.elementByLocalKey('some-local-key');
      var element3 = app!.elementByGlobalKey('some-global-key');

      expect(element1.id, equals('some-id'));
      expect(element2.id, equals('some-local-id'));
      expect(element3.id, equals('some-global-id'));
    });

    test('should reset and update id', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: Key('some-key'), id: 'some-id'),
          InputRadio(key: LocalKey('some-local-key'), id: 'some-local-id'),
          InputRadio(key: GlobalKey('some-global-key'), id: 'some-global-id'),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByKey('some-key', app!.appContext);
      var element2 = app!.elementByLocalKey('some-local-key');
      var element3 = app!.elementByGlobalKey('some-global-key');

      expect(element1.id, equals('some-id'));
      expect(element2.id, equals('some-local-id'));
      expect(element3.id, equals('some-global-id'));

      await app!.updateChildren(
        widgets: [
          InputRadio(
            key: Key('some-key'),
            id: 'some-updated-id',
          ),
          InputRadio(
            key: LocalKey('some-local-key'),
            id: 'some-local-updated-id',
          ),
          InputRadio(
            key: GlobalKey('some-global-key'),
            id: 'some-global-updated-id',
          ),
        ],
        updateType: UpdateType.undefined,
        parentContext: app!.appContext,
      );

      expect(element1.id, equals('some-updated-id'));
      expect(element2.id, equals('some-local-updated-id'));
      expect(element3.id, equals('some-global-updated-id'));
    });

    test('should set messy "id"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            id: 'some id',
          ),
          InputRadio(
            key: Key('widget-2'),
            id: 'some "messy" id',
          ),
          InputRadio(
            key: Key('widget-3'),
            id: "some 'messy' id",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        element1.getAttribute('id'),
        equals('some id'),
      );

      expect(
        element2.getAttribute('id'),
        equals('some "messy" id'),
      );

      expect(
        element3.getAttribute('id'),
        equals("some 'messy' id"),
      );
    });

    test('should set child widget', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            id: 'widget-1',
            child: InputRadio(
              id: 'widget-2',
            ),
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = element1.childNodes[0] as HtmlElement;

      expect(element1.id, equals('widget-1'));
      expect(element2.id, equals('widget-2'));
    });

    test('should set children widgets', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            id: 'widget-1',
            children: [
              InputRadio(
                id: 'widget-2',
              ),
              InputRadio(
                id: 'widget-3',
              ),
            ],
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = element1.childNodes[0] as HtmlElement;
      var element3 = element1.childNodes[1] as HtmlElement;

      expect(element1.id, equals('widget-1'));
      expect(element2.id, equals('widget-2'));
      expect(element3.id, equals('widget-3'));
    });

    test('should set attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
          InputRadio(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('class'), equals('some-classes'));
      expect(element2.getAttribute('class'), equals('another-classes'));
    });

    test('should update attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
          InputRadio(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            classAttribute: 'updated-classes',
          ),
          InputRadio(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('class'), equals('updated-classes'));
      expect(element2.getAttribute('class'), equals('another-classes'));
    });

    test('should clear attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('class'), equals(null));
      expect(element2.getAttribute('class'), equals(null));
    });

    test('should clear attribute "classes" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), classAttribute: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('class'), equals(null));
    });

    test('should not set attribute "classes" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), classAttribute: null),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('class'), equals(null));
    });

    test('should set messy "classes"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            classAttribute: 'some classes',
          ),
          InputRadio(
            key: Key('widget-2'),
            classAttribute: 'some "messy" classes',
          ),
          InputRadio(
            key: Key('widget-3'),
            classAttribute: "some 'messy' classes",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        element1.getAttribute('class'),
        equals('some classes'),
      );

      expect(
        element2.getAttribute('class'),
        equals('some "messy" classes'),
      );

      expect(
        element3.getAttribute('class'),
        equals("some 'messy' classes"),
      );
    });

    test('should set contenteditable', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            contenteditable: false,
          ),
          InputRadio(
            key: Key('widget-2'),
            contenteditable: true,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;

      expect(element1.getAttribute('contenteditable'), equals('false'));
      expect(element2.getAttribute('contenteditable'), equals('true'));
    });

    test('should set draggable', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            draggable: false,
          ),
          InputRadio(
            key: Key('widget-2'),
            draggable: true,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;

      expect(element1.getAttribute('draggable'), equals('false'));
      expect(element2.getAttribute('draggable'), equals('true'));
    });

    test('should set attribute "hidden" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), hidden: false),
          InputRadio(key: GlobalKey('el-2'), hidden: null),
          InputRadio(key: GlobalKey('el-3'), hidden: true),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');

      expect(element1.getAttribute('hidden'), equals(null));
      expect(element2.getAttribute('hidden'), equals(null));
      expect(element3.getAttribute('hidden'), equals('true'));
    });

    test('should clear attribute "hidden" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), hidden: true),
          InputRadio(key: GlobalKey('el-2'), hidden: true),
          InputRadio(key: GlobalKey('el-3'), hidden: true),
          InputRadio(key: GlobalKey('el-4'), hidden: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), hidden: true),
          InputRadio(key: GlobalKey('el-2'), hidden: false),
          InputRadio(key: GlobalKey('el-3'), hidden: null),
          InputRadio(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');
      var element4 = app!.elementByGlobalKey('el-4');

      expect(element1.getAttribute('hidden'), equals('true'));
      expect(element2.getAttribute('hidden'), equals(null));
      expect(element3.getAttribute('hidden'), equals(null));
      expect(element4.getAttribute('hidden'), equals(null));
    });

    test('should set inner text', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('widget-1'),
            innerText: 'hello world',
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;

      // we are using innerHtml as inner text is not accessible
      // or returns empty string for some node(e.g progress)

      expect(element1.innerHtml, equals('hello world'));
    }, onPlatform: {
      'chrome': Skip('Failing for input on chrome'),
    });

    test('should set attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
          InputRadio(
              key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('onClick'), equals('some-on-click'));
      expect(element2.getAttribute('onClick'), equals('another-on-click'));
    });

    test('should update attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
          InputRadio(
              key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(
              key: GlobalKey('el-1'), onClickAttribute: 'updated-on-click'),
          InputRadio(
              key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('onClick'), equals('updated-on-click'));
      expect(element2.getAttribute('onClick'), equals('another-on-click'));
    });

    test('should clear attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(
              key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('onClick'), equals(null));
      expect(element2.getAttribute('onClick'), equals(null));
    });

    test('should clear attribute "onClickAttribute" if updated value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), onClickAttribute: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('onClick'), equals(null));
    });

    test(
        'should not set attribute "onClickAttribute" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), onClickAttribute: null),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('onClick'), equals(null));
    });

    test('should set messy "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            onClickAttribute: 'some onClick',
          ),
          InputRadio(
            key: Key('widget-2'),
            onClickAttribute: 'some "messy" onClick',
          ),
          InputRadio(
            key: Key('widget-3'),
            onClickAttribute: "some 'messy' onClick",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        element1.getAttribute('onclick'),
        equals('some onClick'),
      );

      expect(
        element2.getAttribute('onclick'),
        equals('some "messy" onClick'),
      );

      expect(
        element3.getAttribute('onclick'),
        equals("some 'messy' onClick"),
      );
    });

    test('should set "click" event listener', () async {
      var testStack = RT_TestStack();

      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            onClick: (event) => testStack.push('click-1'),
          ),
          InputRadio(
            key: GlobalKey('el-2'),
            onClick: (event) => testStack.push('click-2'),
          ),
        ],
        parentContext: app!.appContext,
      );

      app!.elementByGlobalKey('el-1').dispatchEvent(Event('click'));
      app!.elementByGlobalKey('el-2').dispatchEvent(Event('click'));

      await Future.delayed(Duration.zero, () {
        expect(testStack.popFromStart(), equals('click-1'));
        expect(testStack.popFromStart(), equals('click-2'));
        expect(testStack.canPop(), equals(false));
      });
    });

    test('should set "click" event listener only if provided', () async {
      void listener(event) => {};

      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), onClick: null),
          InputRadio(key: GlobalKey('el-3'), onClick: listener),
        ],
        parentContext: app!.appContext,
      );

      var listeners1 = app!.widget('el-1').widgetEventListeners;
      var listeners2 = app!.widget('el-2').widgetEventListeners;
      var listeners3 = app!.widget('el-3').widgetEventListeners;

      expect(listeners1[DomEventType.click], equals(null));
      expect(listeners2[DomEventType.click], equals(null));
      expect(listeners3[DomEventType.click], equals(listener));
    });

    test('should clear "click" event listner', () async {
      void listener(event) => {};

      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), onClick: listener),
        ],
        parentContext: app!.appContext,
      );

      var listeners1 = app!.widget('el-1').widgetEventListeners;
      var listeners2 = app!.widget('el-2').widgetEventListeners;

      expect(listeners1[DomEventType.click], equals(null));
      expect(listeners2[DomEventType.click], equals(listener));

      // update

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      listeners1 = app!.widget('el-1').widgetEventListeners;
      listeners2 = app!.widget('el-2').widgetEventListeners;

      expect(listeners1[DomEventType.click], equals(null));
      expect(listeners2[DomEventType.click], equals(null));
    });

    test('should set style', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: Key('widget-1'), style: 'some style'),
          InputRadio(key: Key('widget-2'), style: 'some "messy" style'),
          InputRadio(key: Key('widget-3'), style: "some 'messy' style"),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(element1.getAttribute('style'), equals('some style'));
      expect(element2.getAttribute('style'), equals('some "messy" style'));
      expect(element3.getAttribute('style'), equals("some 'messy' style"));
    });

    test('should set tab index', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            tabIndex: 1,
          ),
          InputRadio(
            key: Key('widget-2'),
            tabIndex: 2,
          ),
          InputRadio(
            key: Key('widget-3'),
            tabIndex: 3,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(element1.getAttribute('tabindex'), equals('1'));
      expect(element2.getAttribute('tabindex'), equals('2'));
      expect(element3.getAttribute('tabindex'), equals('3'));
    });

    test('should set title', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: Key('widget-1'), title: 'some title'),
          InputRadio(key: Key('widget-2'), title: 'some "messy" title'),
          InputRadio(key: Key('widget-3'), title: "some 'messy' title"),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(element1.getAttribute('title'), equals('some title'));
      expect(element2.getAttribute('title'), equals('some "messy" title'));
      expect(element3.getAttribute('title'), equals("some 'messy' title"));
    });

    test('should set correct types and markup', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('some-global-key')),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      expect(
        RT_TestBed.rootElement.innerHtml,
        startsWith(
          //
          // img/col tags might don't have a closing tag
          //
          [
            'img',
            'col',
            'br',
            'hr',
            'input',
          ].contains('input')
              ? [
                  'input',
                ].contains('input')
                  // becuase system set attributes for some tags
                  // e.g type="something" for input tag
                  ? '<input'
                  : '<input>'
              : '<input></input>',
        ),
      );
    });

    test('should set data attributes', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
              'another': 'another okay',
            },
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;

      expect(element1.dataset['something'], equals('something okay'));
      expect(element1.dataset['another'], equals('another okay'));
    });

    test('should remove obsolute and add new data attributes on update',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
            },
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something-new': 'something new',
            },
          ),
        ],
        updateType: UpdateType.undefined,
        parentContext: app!.appContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      element1 as HtmlElement;

      expect(element1.dataset['something'], equals(null));
      expect(element1.dataset['something-new'], equals('something new'));
    });

    test('should not override system reserved data attributes on build',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
              Constants.attrWidgetType: 'must ignore',
            },
          ),
        ],
        parentContext: app!.appContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      element1 as HtmlElement;

      expect(element1.dataset['something'], equals('something okay'));

      expect(element1.dataset[Constants.attrWidgetType], equals(null));
    });

    test('should not remove system reserved data attributes on update',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
              Constants.attrWidgetType: 'must ignore',
            },
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something new',
              'something-diff': 'something diff',
              Constants.attrWidgetType: 'must ignore',
            },
          ),
        ],
        updateType: UpdateType.undefined,
        parentContext: app!.appContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      element1 as HtmlElement;

      expect(element1.dataset['something'], equals('something new'));
      expect(element1.dataset['something-diff'], equals('something diff'));
      expect(element1.dataset[Constants.attrWidgetType], equals(null));
    });

    test('should set key', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: Key('some-key')),
          InputRadio(key: LocalKey('some-local-key')),
          InputRadio(key: GlobalKey('some-global-key')),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var wO1 = app!.widgetObjectByKey('some-key', RT_TestBed.rootContext);
      var wO2 = app!.widgetObjectByLocalKey('some-local-key');
      var wO3 = app!.widgetObjectByGlobalKey('some-global-key');

      expect(wO1.context.key.value, endsWith('some-key'));
      expect(wO2.context.key.value, endsWith('some-local-key'));
      expect(wO3.context.key.value, equals('some-global-key'));
    });

    test('should set attribute "name"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: 'some-name'),
          InputRadio(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('name'), equals('some-name'));
      expect(element2.getAttribute('name'), equals('another-name'));
    });

    test('should update attribute "name"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: 'some-name'),
          InputRadio(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: 'updated-name'),
          InputRadio(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('name'), equals('updated-name'));
      expect(element2.getAttribute('name'), equals('another-name'));
    });

    test('should clear attribute "name"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('name'), equals(null));
      expect(element2.getAttribute('name'), equals(null));
    });

    test('should clear attribute "name" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: 'some-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('name'), equals(null));
    });

    test('should not set attribute "name" if provided value is null', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), name: null),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('name'), equals(null));
    });

    test('should set messy "name"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: Key('widget-1'),
            name: 'some name',
          ),
          InputRadio(
            key: Key('widget-2'),
            name: 'some "messy" name',
          ),
          InputRadio(
            key: Key('widget-3'),
            name: "some 'messy' name",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var element1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var element2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var element3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        element1.getAttribute('name'),
        equals('some name'),
      );

      expect(
        element2.getAttribute('name'),
        equals('some "messy" name'),
      );

      expect(
        element3.getAttribute('name'),
        equals("some 'messy' name"),
      );
    });

    test('should set attribute "value"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: 'some-value'),
          InputRadio(key: GlobalKey('el-2'), value: 'another-value'),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('value'), equals('some-value'));
      expect(element2.getAttribute('value'), equals('another-value'));
    });

    test('should update attribute "value"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: 'some-value'),
          InputRadio(key: GlobalKey('el-2'), value: 'another-value'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: 'updated-value'),
          InputRadio(key: GlobalKey('el-2'), value: 'another-value'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('value'), equals('updated-value'));
      expect(element2.getAttribute('value'), equals('another-value'));
    });

    test('should clear attribute "value"', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), value: 'another-value'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');

      expect(element1.getAttribute('value'), equals(null));
      expect(element2.getAttribute('value'), equals(null));
    });

    test('should clear attribute "value" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: 'some-value'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('value'), equals(null));
    });

    test('should not set attribute "value" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), value: null),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');

      expect(element1.getAttribute('value'), equals(null));
    });

    test('should set attribute "required" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), required: false),
          InputRadio(key: GlobalKey('el-2'), required: null),
          InputRadio(key: GlobalKey('el-3'), required: true),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');

      expect(element1.getAttribute('required'), equals(null));
      expect(element2.getAttribute('required'), equals(null));
      expect(element3.getAttribute('required'), equals('true'));
    });

    test('should clear attribute "required" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), required: true),
          InputRadio(key: GlobalKey('el-2'), required: true),
          InputRadio(key: GlobalKey('el-3'), required: true),
          InputRadio(key: GlobalKey('el-4'), required: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), required: true),
          InputRadio(key: GlobalKey('el-2'), required: false),
          InputRadio(key: GlobalKey('el-3'), required: null),
          InputRadio(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');
      var element4 = app!.elementByGlobalKey('el-4');

      expect(element1.getAttribute('required'), equals('true'));
      expect(element2.getAttribute('required'), equals(null));
      expect(element3.getAttribute('required'), equals(null));
      expect(element4.getAttribute('required'), equals(null));
    });

    test('should set attribute "disabled" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), disabled: false),
          InputRadio(key: GlobalKey('el-2'), disabled: null),
          InputRadio(key: GlobalKey('el-3'), disabled: true),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');

      expect(element1.getAttribute('disabled'), equals(null));
      expect(element2.getAttribute('disabled'), equals(null));
      expect(element3.getAttribute('disabled'), equals('true'));
    });

    test('should clear attribute "disabled" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), disabled: true),
          InputRadio(key: GlobalKey('el-2'), disabled: true),
          InputRadio(key: GlobalKey('el-3'), disabled: true),
          InputRadio(key: GlobalKey('el-4'), disabled: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), disabled: true),
          InputRadio(key: GlobalKey('el-2'), disabled: false),
          InputRadio(key: GlobalKey('el-3'), disabled: null),
          InputRadio(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');
      var element4 = app!.elementByGlobalKey('el-4');

      expect(element1.getAttribute('disabled'), equals('true'));
      expect(element2.getAttribute('disabled'), equals(null));
      expect(element3.getAttribute('disabled'), equals(null));
      expect(element4.getAttribute('disabled'), equals(null));
    });

    test('should set attribute "checked" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), checked: false),
          InputRadio(key: GlobalKey('el-2'), checked: null),
          InputRadio(key: GlobalKey('el-3'), checked: true),
        ],
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');

      expect(element1.getAttribute('checked'), equals(null));
      expect(element2.getAttribute('checked'), equals(null));
      expect(element3.getAttribute('checked'), equals('true'));
    });

    test('should clear attribute "checked" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), checked: true),
          InputRadio(key: GlobalKey('el-2'), checked: true),
          InputRadio(key: GlobalKey('el-3'), checked: true),
          InputRadio(key: GlobalKey('el-4'), checked: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1'), checked: true),
          InputRadio(key: GlobalKey('el-2'), checked: false),
          InputRadio(key: GlobalKey('el-3'), checked: null),
          InputRadio(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var element1 = app!.elementByGlobalKey('el-1');
      var element2 = app!.elementByGlobalKey('el-2');
      var element3 = app!.elementByGlobalKey('el-3');
      var element4 = app!.elementByGlobalKey('el-4');

      expect(element1.getAttribute('checked'), equals('true'));
      expect(element2.getAttribute('checked'), equals(null));
      expect(element3.getAttribute('checked'), equals(null));
      expect(element4.getAttribute('checked'), equals(null));
    });

    test('should set "change" event listener', () async {
      var testStack = RT_TestStack();

      await app!.buildChildren(
        widgets: [
          InputRadio(
            key: GlobalKey('el-1'),
            onChange: (event) => testStack.push('change-1'),
          ),
          InputRadio(
            key: GlobalKey('el-2'),
            onChange: (event) => testStack.push('change-2'),
          ),
        ],
        parentContext: app!.appContext,
      );

      app!.elementByGlobalKey('el-1').dispatchEvent(Event('change'));
      app!.elementByGlobalKey('el-2').dispatchEvent(Event('change'));

      await Future.delayed(Duration.zero, () {
        expect(testStack.popFromStart(), equals('change-1'));
        expect(testStack.popFromStart(), equals('change-2'));
        expect(testStack.canPop(), equals(false));
      });
    });

    test('should set "change" event listener only if provided', () async {
      void listener(event) => {};

      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), onChange: null),
          InputRadio(key: GlobalKey('el-3'), onChange: listener),
        ],
        parentContext: app!.appContext,
      );

      var listeners1 = app!.widget('el-1').widgetEventListeners;
      var listeners2 = app!.widget('el-2').widgetEventListeners;
      var listeners3 = app!.widget('el-3').widgetEventListeners;

      expect(listeners1[DomEventType.change], equals(null));
      expect(listeners2[DomEventType.change], equals(null));
      expect(listeners3[DomEventType.change], equals(listener));
    });

    test('should clear "change" event listner', () async {
      void listener(event) => {};

      await app!.buildChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2'), onChange: listener),
        ],
        parentContext: app!.appContext,
      );

      var listeners1 = app!.widget('el-1').widgetEventListeners;
      var listeners2 = app!.widget('el-2').widgetEventListeners;

      expect(listeners1[DomEventType.change], equals(null));
      expect(listeners2[DomEventType.change], equals(listener));

      // update

      await app!.updateChildren(
        widgets: [
          InputRadio(key: GlobalKey('el-1')),
          InputRadio(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      listeners1 = app!.widget('el-1').widgetEventListeners;
      listeners2 = app!.widget('el-2').widgetEventListeners;

      expect(listeners1[DomEventType.change], equals(null));
      expect(listeners2[DomEventType.change], equals(null));
    });
  });
}
