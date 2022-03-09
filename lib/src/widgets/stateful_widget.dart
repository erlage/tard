import 'dart:html';

import 'package:rad/src/core/classes/debug.dart';
import 'package:rad/src/core/classes/framework.dart';
import 'package:rad/src/core/constants.dart';
import 'package:rad/src/core/enums.dart';
import 'package:rad/src/core/objects/render_object.dart';
import 'package:rad/src/core/objects/build_context.dart';
import 'package:rad/src/core/types.dart';
import 'package:rad/src/widgets/abstract/widget.dart';
import 'package:rad/src/widgets/props/common_props.dart';

/// A widget that has mutable state.
///
abstract class StatefulWidget extends Widget {
  const StatefulWidget({String? id}) : super(id);

  /// Creates the mutable state for this widget at a given location in the tree.
  ///
  State createState();

  /*
  |--------------------------------------------------------------------------
  | widget internals
  |--------------------------------------------------------------------------
  */

  @override
  get concreteType => "$StatefulWidget";

  @override
  get correspondingTag => DomTag.div;

  @override
  createConfiguration() => _StatefulWidgetConfiguration(createState);

  @override
  isConfigurationChanged(oldConfiguration) => true;

  @override
  createRenderObject(context) => StatefulWidgetRenderObject(context);
}

/*
|--------------------------------------------------------------------------
| configuration
|--------------------------------------------------------------------------
*/

class _StatefulWidgetConfiguration extends WidgetConfiguration {
  final StateBuilderCallback stateBuilder;

  const _StatefulWidgetConfiguration(this.stateBuilder);
}

/*
|--------------------------------------------------------------------------
| render object
|--------------------------------------------------------------------------
*/

class StatefulWidgetRenderObject extends RenderObject {
  late final State state;

  StatefulWidgetRenderObject(BuildContext context) : super(context);

  void updateHook(UpdateType updateType) {
    Framework.updateChildren(
      updateType: updateType,
      widgets: [state.build(context)],
      parentContext: context,
    );
  }

  @override
  render(
    element,
    covariant _StatefulWidgetConfiguration configuration,
  ) {
    state = configuration.stateBuilder();

    CommonProps.applyDataAttributes(element, {
      System.attrStateType: "${state.runtimeType}",
    });

    state
      ..frameworkBindContext(context)
      ..frameworkBindElement(element)
      ..frameworkBindUpdateHook(updateHook)
      ..initState();

    Framework.buildChildren(
      widgets: [state.build(context)],
      parentContext: context,
    );
  }

  @override
  afterWidgetRebind(updateType, oldWidget) {
    // widget rebinding rebinds widget instance in renderObject.context

    state
      ..frameworkUpdateContextBinding(context)
      ..didUpdateWidget(oldWidget);
  }

  @override
  update({
    required element,
    required updateType,
    required oldConfiguration,
    required newConfiguration,
  }) {
    if (state.frameworkIsBuildEnabled) {
      updateHook(updateType);
    }
  }

  @override
  beforeUnMount() => state.dispose();
}

/*
|--------------------------------------------------------------------------
| state
|--------------------------------------------------------------------------
*/

abstract class State<T> {
  /*
  |--------------------------------------------------------------------------
  | useful getters
  |--------------------------------------------------------------------------
  */

  T? _widget;
  T get widget => _widget!;

  HtmlElement? _element;
  HtmlElement get element => _element!;

  BuildContext? _context;
  BuildContext get context => _context!;

  /*
  |--------------------------------------------------------------------------
  | lifecycle hooks
  |--------------------------------------------------------------------------
  */

  /// Called when this widget is inserted into the tree.
  ///
  void initState() {}

  /// Describes the part of the user interface represented by this widget.
  ///
  Widget build(BuildContext context);

  void dispose() {}

  /// Called whenever the widget configuration changes.
  ///
  void didUpdateWidget(T oldWidget) {}

  /*
  |--------------------------------------------------------------------------
  | methods
  |--------------------------------------------------------------------------
  */

  /// Notify the framework that the internal state of this widget has changed.
  ///
  void setState(VoidCallback? callable) {
    if (_isRebuilding) {
      if (Debug.developmentMode) {
        print(
          "setState() called while widget was building. Usually happens when you call setState() in build()",
        );
      }

      return;
    }

    _isRebuilding = true;

    if (null != callable) {
      callable();
    }

    _updateHook!(UpdateType.setState);

    _isRebuilding = false;
  }

  /*
  |--------------------------------------------------------------------------
  | for internal use
  |--------------------------------------------------------------------------
  */

  /// Whether build method is disabled.
  ///
  /// Used by internal framework widgets that uses Stateful widget but render
  /// widgets through Framework.x-api
  ///
  bool get frameworkIsBuildEnabled => true;

  Function(UpdateType type)? _updateHook;

  var _isRebuilding = false;

  void frameworkBindContext(BuildContext context) {
    frameworkUpdateContextBinding(context);
  }

  void frameworkUpdateContextBinding(BuildContext context) {
    _context = context;

    _widget = _context!.widget as T;
  }

  void frameworkBindElement(HtmlElement element) {
    _element = element;
  }

  void frameworkBindUpdateHook(Function(UpdateType type) updateHook) {
    _updateHook = updateHook;
  }
}
