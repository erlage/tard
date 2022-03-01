import 'dart:html';

import 'package:rad/src/core/constants.dart';
import 'package:rad/src/core/enums.dart';
import 'package:rad/src/core/structures/build_context.dart';
import 'package:rad/src/core/structures/widget.dart';
import 'package:rad/src/css/include/normalize.generated.dart';
import 'package:rad/src/css/main.generated.dart';
import 'package:rad/src/core/framework.dart';
import 'package:rad/src/core/objects/render_object.dart';

abstract class AppWidget extends Widget {
  final String? key;

  final Widget child;
  final String targetId;

  final VoidCallback onInit;

  AppWidget({
    this.key,
    required this.child,
    required this.targetId,
    required this.onInit,
  }) {
    Framework.init();

    // insert framework's CSS styles

    Framework.addGlobalStyles(GEN_STYLES_NORMALIZE_CSS, "Normalize");
    Framework.addGlobalStyles(GEN_STYLES_MAIN_CSS, "Main");

    onInit();

    Framework.buildChildren(
      widgets: [this],
      parentContext: BuildContext.bigBang(targetId),
    );
  }

  @override
  DomTag get tag => DomTag.div;

  @override
  String get type => (AppWidget).toString();

  @override
  String get initialKey => key ?? Constants.keyNotSet;

  @override
  buildRenderObject(context) {
    context.parent;

    return AppWidgetRenderObject(
      child: child,
      context: context,
    );
  }
}

class AppWidgetRenderObject extends RenderObject {
  final Widget child;

  AppWidgetRenderObject({
    required this.child,
    required BuildContext context,
  }) : super(context);

  @override
  render(widgetObject) {
    var targetElement = widgetObject.htmlElement.parent;

    if (null == targetElement) {
      throw "Unable to locate target element in HTML document";
    }

    targetElement.dataset.addAll({
      "wtype": "Target",
      "wclass": context.parent.widgetClassName,
    });

    Framework.buildChildren(widgets: [child], parentContext: context);
  }

  @override
  update(widgetObject, updatedRenderObject) {
    throw "Framework gone wild";
  }
}
