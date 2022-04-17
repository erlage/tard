import 'dart:html';

import 'package:rad/src/core/constants.dart';
import 'package:rad/src/core/foundation/common/build_context.dart';
import 'package:rad/src/core/foundation/common/widget_object.dart';
import 'package:rad/src/core/services/debug.dart';
import 'package:rad/src/widgets/inherited_widget.dart';
import 'package:rad/src/widgets/stateful_widget.dart';

/// Widgets Tree Walker/Registry.
///
/// This is used to keep track of all widget objects that are enclosed
/// in single instance of app and find widget objects when needed.
///
class Walker {
  final _registeredWidgetObjects = <String, WidgetObject>{};

  /// Initialize registry.
  ///
  void init() {}

  /// TearDown registry.
  ///
  /// It should be called only during testing.
  ///
  void tearDown() {
    _registeredWidgetObjects.clear();
  }

  /// Register a widget object.
  ///
  void registerWidgetObject(WidgetObject widgetObject) {
    var widgetKey = widgetObject.renderObject.context.key;

    if (Debug.developmentMode) {
      if (_registeredWidgetObjects.containsKey(widgetKey)) {
        return Debug.exception(
          "Key $widgetKey already exists."
          "\n\nThis usually happens in two scenarios,"
          "\n\n1. When you have duplicate keys in your code."
          "\n\nor\n\n2. When you've two adjacent widgets of same type and one of them is optional."
          "\n\nCorrect way to fix (2): Use explicit keys on one of the widgets that are of same type.",
        );
      }
    }

    _registeredWidgetObjects[widgetKey] = widgetObject;
  }

  /// Get widget object by widget key
  WidgetObject? getWidgetObject(String widgetKey) {
    return _registeredWidgetObjects[widgetKey];
  }

  /// Unregister a widget object.
  ///
  void unRegisterWidgetObject(WidgetObject widgetObject) {
    var widgetKey = widgetObject.renderObject.context.key;

    _registeredWidgetObjects.remove(widgetKey);
  }

  /// Return all registered widget keys.
  ///
  List<String> dumpWidgetKeys() {
    return _registeredWidgetObjects.keys.toList();
  }

  /*
  |--------------------------------------------------------------------------
  | Misc methods
  |--------------------------------------------------------------------------
  */

  /// Find widget object in ancestors using selector.
  ///
  WidgetObject? findAncestorWidgetObjectFromSelector(
    String selector,
    BuildContext context,
  ) {
    // ensure context is ready for processing.
    // this happens when user .of(context) is called inside a constructor.

    if (System.contextKeyNotSet == context.key) {
      Debug.exception(
        "Part of build context is not ready. This means that context is under construction.",
      );

      return null;
    }

    var domNode =
        document.getElementById(context.key)?.parent?.closest(selector);

    if (null == domNode) {
      return null;
    }

    // found. return corresponding widget's object.

    return getWidgetObject(domNode.id);
  }

  T? findAncestorWidgetOfExactType<T>(
    BuildContext context,
  ) {
    var selector = "[data-${System.attrRuntimeType}='$T']";

    var widgetObject = findAncestorWidgetObjectFromSelector(selector, context);

    if (null != widgetObject) {
      return widgetObject.widget as T;
    }

    return null;
  }

  T? findAncestorStateOfType<T>(
    BuildContext context,
  ) {
    var selector = "[data-${System.attrStateType}='$T']";

    var widgetObject = findAncestorWidgetObjectFromSelector(selector, context);

    if (null != widgetObject) {
      var renderObject =
          widgetObject.renderObject as StatefulWidgetRenderObject;

      return (renderObject).state as T;
    }

    return null;
  }

  WidgetObject? findAncestorWidgetObjectOfType<T>(
    BuildContext context,
  ) {
    var selector = "[data-${System.attrRuntimeType}='$T']";

    return findAncestorWidgetObjectFromSelector(selector, context);
  }

  WidgetObject? findAncestorWidgetObjectOfClass<T>(
    BuildContext context,
  ) {
    var selector = "[data-${System.attrConcreteType}='$T']";

    return findAncestorWidgetObjectFromSelector(selector, context);
  }

  T? dependOnInheritedWidgetOfExactType<T>(
    BuildContext context,
  ) {
    var selector = "[data-${System.attrRuntimeType}='$T']"
        "[data-${System.attrConcreteType}='$InheritedWidget']";

    var widgetObject = findAncestorWidgetObjectFromSelector(selector, context);

    if (null != widgetObject) {
      var inheritedRenderObject = widgetObject.renderObject;

      inheritedRenderObject as InheritedWidgetRenderObject;

      inheritedRenderObject.addDependent(context);

      return widgetObject.widget as T;
    }

    return null;
  }
}
