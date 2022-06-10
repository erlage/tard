import 'package:rad_test/rad_test.dart';

import '../../test_imports.dart';

/*
|--------------------------------------------------------------------------
| Component tests for core/framework
|--------------------------------------------------------------------------
*/

void main() {
  // we're testing framework at a high-level rather than unit testing everything
  // each test case below verifies multiple aspects of widget's behavior and can
  // fail because of slightest change that test itself is not even meant to test
  group('update widgets basic tests:', () {
    // build tests

    testWidgets('should build new widget if runtime type are differnt',
        (tester) async {
      await tester.pumpWidget(
        RT_TestWidget(
          roEventHookRender: () => tester.push('render 1a'),
          roEventHookUpdate: () => tester.push('update 1a'),
          roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
        ),
      );

      await tester.rePumpWidget(
        RT_AnotherTestWidget(
          roEventHookRender: () => tester.push('render 1b'),
          roEventHookUpdate: () => tester.push('update 1b'),
          roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
        ),
      );

      // one more pass

      await tester.rePumpWidget(
        RT_TestWidget(
          roEventHookRender: () => tester.push('render 1c'),
          roEventHookUpdate: () => tester.push('update 1c'),
          roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
        ),
      );

      tester.assertMatchStack([
        'render 1a',
        'dispose 1a',
        'render 1b',
        'dispose 1b',
        'render 1c',
      ]);
    });

    testWidgets(
      'should build new widget when runtime types of widgets are different',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_AnotherTestWidget(
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        // on more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    testWidgets(
      'should build new widget when runtime types of widgets are different '
      'even if widget keys are matched',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_AnotherTestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        // on more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    testWidgets(
      'should build new widget when runtime types of widgets are different '
      'even if widget local keys are matched',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_AnotherTestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        // on more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    testWidgets(
      'should build new widget when runtime types of widgets are different '
      'even if widget global keys are matched',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_AnotherTestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    testWidgets(
      'should rebuild widget when runtime types of widgets are matched '
      'but keys are not matched',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: Key('key-changed'),
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: Key('key-orginal'),
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    testWidgets(
      'should build new widget when runtime types of widgets are matched '
      'and keys are matched as well but keys have different runtime type',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 1b'),
            roEventHookUpdate: () => tester.push('update 1b'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 1c'),
            roEventHookUpdate: () => tester.push('update 1c'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'dispose 1a',
          'render 1b',
          'dispose 1b',
          'render 1c',
        ]);
      },
    );

    // update tests

    testWidgets(
      'should update exisitng widget when runtime types are matched '
      'and keys are not set',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 2a'),
            roEventHookUpdate: () => tester.push('update 2a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 2a'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 3a'),
            roEventHookUpdate: () => tester.push('update 3a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 3a'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'update 1a',
          'update 1a',
        ]);
      },
    );

    testWidgets(
      'should update exisitng widget when both runtime types and keys are matched ',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 2a'),
            roEventHookUpdate: () => tester.push('update 2a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 2a'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: Key('key-original'),
            roEventHookRender: () => tester.push('render 3a'),
            roEventHookUpdate: () => tester.push('update 3a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 3a'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'update 1a',
          'update 1a',
        ]);
      },
    );

    testWidgets(
      'should update exisitng widget when bot runtime types and local keys are matched ',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 2a'),
            roEventHookUpdate: () => tester.push('update 2a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 2a'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: LocalKey('key-original'),
            roEventHookRender: () => tester.push('render 3a'),
            roEventHookUpdate: () => tester.push('update 3a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 3a'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'update 1a',
          'update 1a',
        ]);
      },
    );

    testWidgets(
      'should update exisitng widget when bot runtime types and global keys are matched ',
      (tester) async {
        await tester.pumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 1a'),
            roEventHookUpdate: () => tester.push('update 1a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a'),
          ),
        );

        await tester.rePumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 2a'),
            roEventHookUpdate: () => tester.push('update 2a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 2a'),
          ),
        );

        // one more pass

        await tester.rePumpWidget(
          RT_TestWidget(
            key: GlobalKey('key-original'),
            roEventHookRender: () => tester.push('render 3a'),
            roEventHookUpdate: () => tester.push('update 3a'),
            roEventHookBeforeUnMount: () => tester.push('dispose 3a'),
          ),
        );

        tester.assertMatchStack([
          'render 1a',
          'update 1a',
          'update 1a',
        ]);
      },
    );

    // flag tests under multiple childs

    testWidgets(
      'should not add new widget if flagAddIfNotFound: false',
      (tester) async {
        await tester.pumpMultipleWidgets([
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a-1'),
            roEventHookUpdate: () => tester.push('update 1a-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a-1'),
          ),
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a-2'),
            roEventHookUpdate: () => tester.push('update 1a-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a-2'),
          ),
        ]);

        await tester.rePumpMultipleWidgets([
          RT_AnotherTestWidget(
            roEventHookRender: () => tester.push('render 1b-1'),
            roEventHookUpdate: () => tester.push('update 1b-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b-1'),
          ),
          RT_AnotherTestWidget(
            roEventHookRender: () => tester.push('render 1b-2'),
            roEventHookUpdate: () => tester.push('update 1b-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b-2'),
          ),
        ], flagAddIfNotFound: false);

        await tester.rePumpMultipleWidgets([
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1c-1'),
            roEventHookUpdate: () => tester.push('update 1c-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c-1'),
          ),
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1c-2'),
            roEventHookUpdate: () => tester.push('update 1c-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c-2'),
          ),
        ], flagAddIfNotFound: false);

        tester.assertMatchStack([
          'render 1a-1',
          'render 1a-2',
          'dispose 1a-1',
          'dispose 1a-2',
        ]);
      },
    );

    testWidgets(
      'should add new widget if flagAddIfNotFound: true',
      (tester) async {
        await tester.pumpMultipleWidgets([
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a-1'),
            roEventHookUpdate: () => tester.push('update 1a-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a-1'),
          ),
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1a-2'),
            roEventHookUpdate: () => tester.push('update 1a-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1a-2'),
          ),
        ]);

        await tester.rePumpMultipleWidgets([
          RT_AnotherTestWidget(
            roEventHookRender: () => tester.push('render 1b-1'),
            roEventHookUpdate: () => tester.push('update 1b-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b-1'),
          ),
          RT_AnotherTestWidget(
            roEventHookRender: () => tester.push('render 1b-2'),
            roEventHookUpdate: () => tester.push('update 1b-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1b-2'),
          ),
        ], flagAddIfNotFound: true);

        await tester.rePumpMultipleWidgets([
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1c-1'),
            roEventHookUpdate: () => tester.push('update 1c-1'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c-1'),
          ),
          RT_TestWidget(
            roEventHookRender: () => tester.push('render 1c-2'),
            roEventHookUpdate: () => tester.push('update 1c-2'),
            roEventHookBeforeUnMount: () => tester.push('dispose 1c-2'),
          ),
        ], flagAddIfNotFound: true);

        tester.assertMatchStack([
          'render 1a-1',
          'render 1a-2',
          'dispose 1a-1',
          'dispose 1a-2',
          'render 1b-1',
          'render 1b-2',
          'dispose 1b-1',
          'dispose 1b-2',
          'render 1c-1',
          'render 1c-2',
        ]);
      },
    );
  });
}
