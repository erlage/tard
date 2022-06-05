// Auto-generated file
//
// Sources of these tests can be found in /test/templates folder

// ignore_for_file: non_constant_identifier_names

part of '../_index_html_test.dart';

void html_i_frame_test() {
  group('HTML IFrame tests:', () {
    RT_AppRunner? app;

    setUp(() {
      app = createTestApp()..start();
    });

    tearDown(() => app!.stop());

    test('should set id', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: Key('some-key'), id: 'some-id'),
          IFrame(key: LocalKey('some-local-key'), id: 'some-local-id'),
          IFrame(key: GlobalKey('some-global-key'), id: 'some-global-id'),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = app!.domNodeByKey('some-key', RT_TestBed.rootContext);
      var domNode2 = app!.domNodeByLocalKey('some-local-key');
      var domNode3 = app!.domNodeByGlobalKey('some-global-key');

      expect(domNode1.id, equals('some-id'));
      expect(domNode2.id, equals('some-local-id'));
      expect(domNode3.id, equals('some-global-id'));
    });

    test('should reset and update id', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: Key('some-key'), id: 'some-id'),
          IFrame(key: LocalKey('some-local-key'), id: 'some-local-id'),
          IFrame(key: GlobalKey('some-global-key'), id: 'some-global-id'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByKey('some-key', app!.appContext);
      var domNode2 = app!.domNodeByLocalKey('some-local-key');
      var domNode3 = app!.domNodeByGlobalKey('some-global-key');

      expect(domNode1.id, equals('some-id'));
      expect(domNode2.id, equals('some-local-id'));
      expect(domNode3.id, equals('some-global-id'));

      await app!.updateChildren(
        widgets: [
          IFrame(
            key: Key('some-key'),
            id: 'some-updated-id',
          ),
          IFrame(
            key: LocalKey('some-local-key'),
            id: 'some-local-updated-id',
          ),
          IFrame(
            key: GlobalKey('some-global-key'),
            id: 'some-global-updated-id',
          ),
        ],
        updateType: UpdateType.undefined,
        parentContext: app!.appContext,
      );

      expect(domNode1.id, equals('some-updated-id'));
      expect(domNode2.id, equals('some-local-updated-id'));
      expect(domNode3.id, equals('some-global-updated-id'));
    });

    test('should set messy "id"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            id: 'some id',
          ),
          IFrame(
            key: Key('widget-2'),
            id: 'some "messy" id',
          ),
          IFrame(
            key: Key('widget-3'),
            id: "some 'messy' id",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        domNode1.getAttribute('id'),
        equals('some id'),
      );

      expect(
        domNode2.getAttribute('id'),
        equals('some "messy" id'),
      );

      expect(
        domNode3.getAttribute('id'),
        equals("some 'messy' id"),
      );
    });

    test('should set child widget', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            id: 'widget-1',
            child: IFrame(
              id: 'widget-2',
            ),
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = domNode1.childNodes[0] as HtmlElement;

      expect(domNode1.id, equals('widget-1'));
      expect(domNode2.id, equals('widget-2'));
    });

    test('should set children widgets', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            id: 'widget-1',
            children: [
              IFrame(
                id: 'widget-2',
              ),
              IFrame(
                id: 'widget-3',
              ),
            ],
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = domNode1.childNodes[0] as HtmlElement;
      var domNode3 = domNode1.childNodes[1] as HtmlElement;

      expect(domNode1.id, equals('widget-1'));
      expect(domNode2.id, equals('widget-2'));
      expect(domNode3.id, equals('widget-3'));
    });

    test('should set attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
          IFrame(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('class'), equals('some-classes'));
      expect(domNode2.getAttribute('class'), equals('another-classes'));
    });

    test('should update attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
          IFrame(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(
            key: GlobalKey('el-1'),
            classAttribute: 'updated-classes',
          ),
          IFrame(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('class'), equals('updated-classes'));
      expect(domNode2.getAttribute('class'), equals('another-classes'));
    });

    test('should clear attribute "classes"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(
            key: GlobalKey('el-2'),
            classAttribute: 'another-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('class'), equals(null));
      expect(domNode2.getAttribute('class'), equals(null));
    });

    test('should clear attribute "classes" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('el-1'),
            classAttribute: 'some-classes',
          ),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), classAttribute: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('class'), equals(null));
    });

    test('should not set attribute "classes" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), classAttribute: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('class'), equals(null));
    });

    test('should set messy "classes"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            classAttribute: 'some classes',
          ),
          IFrame(
            key: Key('widget-2'),
            classAttribute: 'some "messy" classes',
          ),
          IFrame(
            key: Key('widget-3'),
            classAttribute: "some 'messy' classes",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        domNode1.getAttribute('class'),
        equals('some classes'),
      );

      expect(
        domNode2.getAttribute('class'),
        equals('some "messy" classes'),
      );

      expect(
        domNode3.getAttribute('class'),
        equals("some 'messy' classes"),
      );
    });

    test('should set contenteditable', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            contenteditable: false,
          ),
          IFrame(
            key: Key('widget-2'),
            contenteditable: true,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;

      expect(domNode1.getAttribute('contenteditable'), equals('false'));
      expect(domNode2.getAttribute('contenteditable'), equals('true'));
    });

    test('should set draggable', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            draggable: false,
          ),
          IFrame(
            key: Key('widget-2'),
            draggable: true,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;

      expect(domNode1.getAttribute('draggable'), equals('false'));
      expect(domNode2.getAttribute('draggable'), equals('true'));
    });

    test('should set attribute "hidden" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), hidden: false),
          IFrame(key: GlobalKey('el-2'), hidden: null),
          IFrame(key: GlobalKey('el-3'), hidden: true),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');

      expect(domNode1.getAttribute('hidden'), equals(null));
      expect(domNode2.getAttribute('hidden'), equals(null));
      expect(domNode3.getAttribute('hidden'), equals('true'));
    });

    test('should clear attribute "hidden" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), hidden: true),
          IFrame(key: GlobalKey('el-2'), hidden: true),
          IFrame(key: GlobalKey('el-3'), hidden: true),
          IFrame(key: GlobalKey('el-4'), hidden: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), hidden: true),
          IFrame(key: GlobalKey('el-2'), hidden: false),
          IFrame(key: GlobalKey('el-3'), hidden: null),
          IFrame(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');
      var domNode4 = app!.domNodeByGlobalKey('el-4');

      expect(domNode1.getAttribute('hidden'), equals('true'));
      expect(domNode2.getAttribute('hidden'), equals(null));
      expect(domNode3.getAttribute('hidden'), equals(null));
      expect(domNode4.getAttribute('hidden'), equals(null));
    });

    test('should set inner text', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('widget-1'),
            innerText: 'hello world',
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;

      // we are using innerHtml as inner text is not accessible
      // or returns empty string for some node(e.g progress)

      expect(domNode1.innerHtml, equals('hello world'));
    });

    test('should set attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
          IFrame(key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('onClick'), equals('some-on-click'));
      expect(domNode2.getAttribute('onClick'), equals('another-on-click'));
    });

    test('should update attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
          IFrame(key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: 'updated-on-click'),
          IFrame(key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('onClick'), equals('updated-on-click'));
      expect(domNode2.getAttribute('onClick'), equals('another-on-click'));
    });

    test('should clear attribute "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), onClickAttribute: 'another-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('onClick'), equals(null));
      expect(domNode2.getAttribute('onClick'), equals(null));
    });

    test('should clear attribute "onClickAttribute" if updated value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: 'some-on-click'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('onClick'), equals(null));
    });

    test(
        'should not set attribute "onClickAttribute" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), onClickAttribute: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('onClick'), equals(null));
    });

    test('should set messy "onClickAttribute"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            onClickAttribute: 'some onClick',
          ),
          IFrame(
            key: Key('widget-2'),
            onClickAttribute: 'some "messy" onClick',
          ),
          IFrame(
            key: Key('widget-3'),
            onClickAttribute: "some 'messy' onClick",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        domNode1.getAttribute('onclick'),
        equals('some onClick'),
      );

      expect(
        domNode2.getAttribute('onclick'),
        equals('some "messy" onClick'),
      );

      expect(
        domNode3.getAttribute('onclick'),
        equals("some 'messy' onClick"),
      );
    });

    test('should set "click" event listener', () async {
      var testStack = RT_TestStack();

      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('el-1'),
            onClick: (event) => testStack.push('click-1'),
          ),
          IFrame(
            key: GlobalKey('el-2'),
            onClick: (event) => testStack.push('click-2'),
          ),
        ],
        parentContext: app!.appContext,
      );

      app!.domNodeByGlobalKey('el-1').dispatchEvent(Event('click'));
      app!.domNodeByGlobalKey('el-2').dispatchEvent(Event('click'));

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
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), onClick: null),
          IFrame(key: GlobalKey('el-3'), onClick: listener),
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
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), onClick: listener),
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
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
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
          IFrame(key: Key('widget-1'), style: 'some style'),
          IFrame(key: Key('widget-2'), style: 'some "messy" style'),
          IFrame(key: Key('widget-3'), style: "some 'messy' style"),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(domNode1.getAttribute('style'), equals('some style'));
      expect(domNode2.getAttribute('style'), equals('some "messy" style'));
      expect(domNode3.getAttribute('style'), equals("some 'messy' style"));
    });

    test('should set tab index', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            tabIndex: 1,
          ),
          IFrame(
            key: Key('widget-2'),
            tabIndex: 2,
          ),
          IFrame(
            key: Key('widget-3'),
            tabIndex: 3,
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(domNode1.getAttribute('tabindex'), equals('1'));
      expect(domNode2.getAttribute('tabindex'), equals('2'));
      expect(domNode3.getAttribute('tabindex'), equals('3'));
    });

    test('should set title', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: Key('widget-1'), title: 'some title'),
          IFrame(key: Key('widget-2'), title: 'some "messy" title'),
          IFrame(key: Key('widget-3'), title: "some 'messy' title"),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(domNode1.getAttribute('title'), equals('some title'));
      expect(domNode2.getAttribute('title'), equals('some "messy" title'));
      expect(domNode3.getAttribute('title'), equals("some 'messy' title"));
    });

    test('should set correct types and markup', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('some-global-key')),
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
          ].contains('iframe')
              ? [
                  'input',
                ].contains('iframe')
                  // becuase system set attributes for some tags
                  // e.g type="something" for input tag
                  ? '<iframe'
                  : '<iframe>'
              : '<iframe></iframe>',
        ),
      );
    });

    test('should set data attributes', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
              'another': 'another okay',
            },
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;

      expect(domNode1.dataset['something'], equals('something okay'));
      expect(domNode1.dataset['another'], equals('another okay'));
    });

    test('should remove obsolute and add new data attributes on update',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
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
          IFrame(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something-new': 'something new',
            },
          ),
        ],
        updateType: UpdateType.undefined,
        parentContext: app!.appContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      domNode1 as HtmlElement;

      expect(domNode1.dataset['something'], equals(null));
      expect(domNode1.dataset['something-new'], equals('something new'));
    });

    test('should not override system reserved data attributes on build',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: GlobalKey('some-global-key'),
            dataAttributes: {
              'something': 'something okay',
              Constants.attrWidgetType: 'must ignore',
            },
          ),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      domNode1 as HtmlElement;

      expect(domNode1.dataset['something'], equals('something okay'));

      expect(domNode1.dataset[Constants.attrWidgetType], equals(null));
    });

    test('should not remove system reserved data attributes on update',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
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
          IFrame(
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

      var domNode1 = RT_TestBed.rootElement.childNodes[0].childNodes[0];

      domNode1 as HtmlElement;

      expect(domNode1.dataset['something'], equals('something new'));
      expect(domNode1.dataset['something-diff'], equals('something diff'));
      expect(domNode1.dataset[Constants.attrWidgetType], equals(null));
    });

    test('should have a short-tag alias', () async {
      var widget = IFrame();
      var widgetShort = iframe();

      expect(
        widget.runtimeType,
        equals(widgetShort.runtimeType),
      );
    });

    test('should set key', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: Key('some-key')),
          IFrame(key: LocalKey('some-local-key')),
          IFrame(key: GlobalKey('some-global-key')),
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
          IFrame(key: GlobalKey('el-1'), name: 'some-name'),
          IFrame(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('name'), equals('some-name'));
      expect(domNode2.getAttribute('name'), equals('another-name'));
    });

    test('should update attribute "name"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), name: 'some-name'),
          IFrame(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), name: 'updated-name'),
          IFrame(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('name'), equals('updated-name'));
      expect(domNode2.getAttribute('name'), equals('another-name'));
    });

    test('should clear attribute "name"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), name: 'another-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('name'), equals(null));
      expect(domNode2.getAttribute('name'), equals(null));
    });

    test('should clear attribute "name" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), name: 'some-name'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), name: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('name'), equals(null));
    });

    test('should not set attribute "name" if provided value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), name: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('name'), equals(null));
    });

    test('should set messy "name"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(
            key: Key('widget-1'),
            name: 'some name',
          ),
          IFrame(
            key: Key('widget-2'),
            name: 'some "messy" name',
          ),
          IFrame(
            key: Key('widget-3'),
            name: "some 'messy' name",
          ),
        ],
        parentContext: RT_TestBed.rootContext,
      );

      var domNode1 = RT_TestBed.rootElement.childNodes[0] as HtmlElement;
      var domNode2 = RT_TestBed.rootElement.childNodes[1] as HtmlElement;
      var domNode3 = RT_TestBed.rootElement.childNodes[2] as HtmlElement;

      expect(
        domNode1.getAttribute('name'),
        equals('some name'),
      );

      expect(
        domNode2.getAttribute('name'),
        equals('some "messy" name'),
      );

      expect(
        domNode3.getAttribute('name'),
        equals("some 'messy' name"),
      );
    });

    test('should set attribute "allow"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: 'some-allow'),
          IFrame(key: GlobalKey('el-2'), allow: 'another-allow'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('allow'), equals('some-allow'));
      expect(domNode2.getAttribute('allow'), equals('another-allow'));
    });

    test('should update attribute "allow"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: 'some-allow'),
          IFrame(key: GlobalKey('el-2'), allow: 'another-allow'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: 'updated-allow'),
          IFrame(key: GlobalKey('el-2'), allow: 'another-allow'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('allow'), equals('updated-allow'));
      expect(domNode2.getAttribute('allow'), equals('another-allow'));
    });

    test('should clear attribute "allow"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), allow: 'another-allow'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('allow'), equals(null));
      expect(domNode2.getAttribute('allow'), equals(null));
    });

    test('should clear attribute "allow" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: 'some-allow'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('allow'), equals(null));
    });

    test('should not set attribute "allow" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allow: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('allow'), equals(null));
    });

    test('should set attribute "src"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: 'some-src'),
          IFrame(key: GlobalKey('el-2'), src: 'another-src'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('src'), equals('some-src'));
      expect(domNode2.getAttribute('src'), equals('another-src'));
    });

    test('should update attribute "src"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: 'some-src'),
          IFrame(key: GlobalKey('el-2'), src: 'another-src'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: 'updated-src'),
          IFrame(key: GlobalKey('el-2'), src: 'another-src'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('src'), equals('updated-src'));
      expect(domNode2.getAttribute('src'), equals('another-src'));
    });

    test('should clear attribute "src"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), src: 'another-src'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('src'), equals(null));
      expect(domNode2.getAttribute('src'), equals(null));
    });

    test('should clear attribute "src" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: 'some-src'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('src'), equals(null));
    });

    test('should not set attribute "src" if provided value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), src: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('src'), equals(null));
    });

    test('should set attribute "width"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: 'some-width'),
          IFrame(key: GlobalKey('el-2'), width: 'another-width'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('width'), equals('some-width'));
      expect(domNode2.getAttribute('width'), equals('another-width'));
    });

    test('should update attribute "width"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: 'some-width'),
          IFrame(key: GlobalKey('el-2'), width: 'another-width'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: 'updated-width'),
          IFrame(key: GlobalKey('el-2'), width: 'another-width'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('width'), equals('updated-width'));
      expect(domNode2.getAttribute('width'), equals('another-width'));
    });

    test('should clear attribute "width"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), width: 'another-width'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('width'), equals(null));
      expect(domNode2.getAttribute('width'), equals(null));
    });

    test('should clear attribute "width" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: 'some-width'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('width'), equals(null));
    });

    test('should not set attribute "width" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), width: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('width'), equals(null));
    });

    test('should set attribute "height"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: 'some-height'),
          IFrame(key: GlobalKey('el-2'), height: 'another-height'),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('height'), equals('some-height'));
      expect(domNode2.getAttribute('height'), equals('another-height'));
    });

    test('should update attribute "height"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: 'some-height'),
          IFrame(key: GlobalKey('el-2'), height: 'another-height'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: 'updated-height'),
          IFrame(key: GlobalKey('el-2'), height: 'another-height'),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('height'), equals('updated-height'));
      expect(domNode2.getAttribute('height'), equals('another-height'));
    });

    test('should clear attribute "height"', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2'), height: 'another-height'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1')),
          IFrame(key: GlobalKey('el-2')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');

      expect(domNode1.getAttribute('height'), equals(null));
      expect(domNode2.getAttribute('height'), equals(null));
    });

    test('should clear attribute "height" if updated value is null', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: 'some-height'),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: null),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('height'), equals(null));
    });

    test('should not set attribute "height" if provided value is null',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), height: null),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');

      expect(domNode1.getAttribute('height'), equals(null));
    });

    test('should set attribute "allowFullscreen" only if its true', () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowFullscreen: false),
          IFrame(key: GlobalKey('el-2'), allowFullscreen: null),
          IFrame(key: GlobalKey('el-3'), allowFullscreen: true),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');

      expect(domNode1.getAttribute('allowfullscreen'), equals(null));
      expect(domNode2.getAttribute('allowfullscreen'), equals(null));
      expect(domNode3.getAttribute('allowfullscreen'), equals('true'));
    });

    test(
        'should clear attribute "allowFullscreen" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowFullscreen: true),
          IFrame(key: GlobalKey('el-2'), allowFullscreen: true),
          IFrame(key: GlobalKey('el-3'), allowFullscreen: true),
          IFrame(key: GlobalKey('el-4'), allowFullscreen: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowFullscreen: true),
          IFrame(key: GlobalKey('el-2'), allowFullscreen: false),
          IFrame(key: GlobalKey('el-3'), allowFullscreen: null),
          IFrame(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');
      var domNode4 = app!.domNodeByGlobalKey('el-4');

      expect(domNode1.getAttribute('allowfullscreen'), equals('true'));
      expect(domNode2.getAttribute('allowfullscreen'), equals(null));
      expect(domNode3.getAttribute('allowfullscreen'), equals(null));
      expect(domNode4.getAttribute('allowfullscreen'), equals(null));
    });

    test('should set attribute "allowPaymentRequest" only if its true',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowPaymentRequest: false),
          IFrame(key: GlobalKey('el-2'), allowPaymentRequest: null),
          IFrame(key: GlobalKey('el-3'), allowPaymentRequest: true),
        ],
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');

      expect(domNode1.getAttribute('allowpaymentrequest'), equals(null));
      expect(domNode2.getAttribute('allowpaymentrequest'), equals(null));
      expect(domNode3.getAttribute('allowpaymentrequest'), equals('true'));
    });

    test(
        'should clear attribute "allowPaymentRequest" if updated value is not true',
        () async {
      await app!.buildChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowPaymentRequest: true),
          IFrame(key: GlobalKey('el-2'), allowPaymentRequest: true),
          IFrame(key: GlobalKey('el-3'), allowPaymentRequest: true),
          IFrame(key: GlobalKey('el-4'), allowPaymentRequest: true),
        ],
        parentContext: app!.appContext,
      );

      await app!.updateChildren(
        widgets: [
          IFrame(key: GlobalKey('el-1'), allowPaymentRequest: true),
          IFrame(key: GlobalKey('el-2'), allowPaymentRequest: false),
          IFrame(key: GlobalKey('el-3'), allowPaymentRequest: null),
          IFrame(key: GlobalKey('el-4')),
        ],
        updateType: UpdateType.setState,
        parentContext: app!.appContext,
      );

      var domNode1 = app!.domNodeByGlobalKey('el-1');
      var domNode2 = app!.domNodeByGlobalKey('el-2');
      var domNode3 = app!.domNodeByGlobalKey('el-3');
      var domNode4 = app!.domNodeByGlobalKey('el-4');

      expect(domNode1.getAttribute('allowpaymentrequest'), equals('true'));
      expect(domNode2.getAttribute('allowpaymentrequest'), equals(null));
      expect(domNode3.getAttribute('allowpaymentrequest'), equals(null));
      expect(domNode4.getAttribute('allowpaymentrequest'), equals(null));
    });
  });
}
