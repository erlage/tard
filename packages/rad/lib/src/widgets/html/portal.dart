// Copyright (c) 2022, Rad developers. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'package:rad/src/core/common/constants.dart';
import 'package:rad/src/core/common/enums.dart';
import 'package:rad/src/core/common/objects/key.dart';
import 'package:rad/src/core/common/types.dart';
import 'package:rad/src/widgets/abstract/html_widget_base.dart';
import 'package:rad/src/widgets/abstract/widget.dart';

/// The Portal widget (HTML's `portal` tag).
///
class Portal extends HTMLWidgetBase {
  /// Sets the referrer policy to use when requesting the page at the URL given
  /// as the value of the src attribute.
  ///
  final String? referrerPolicy;

  /// The URL of the page to embed.
  ///
  final String? src;

  const Portal({
    Key? key,
    this.referrerPolicy,
    this.src,
    bool? hidden,
    bool? draggable,
    bool? contentEditable,
    int? tabIndex,
    String? id,
    String? title,
    String? style,
    String? className,
    String? innerText,
    List<Widget>? children,
    EventCallback? onClick,
    Map<String, String>? additionalAttributes,
  }) : super(
          key: key,
          id: id,
          title: title,
          tabIndex: tabIndex,
          draggable: draggable,
          contentEditable: contentEditable,
          hidden: hidden,
          style: style,
          className: className,
          innerText: innerText,
          children: children,
          onClick: onClick,
          additionalAttributes: additionalAttributes,
        );

  @nonVirtual
  @override
  String get widgetType => 'Portal';

  @override
  DomTagType get correspondingTag => DomTagType.portal;

  @override
  bool shouldUpdateWidget(covariant Portal oldWidget) {
    return referrerPolicy != oldWidget.referrerPolicy ||
        src != oldWidget.src ||
        super.shouldUpdateWidget(oldWidget);
  }

  @override
  createRenderElement(parent) => PortalRenderElement(this, parent);
}

/*
|--------------------------------------------------------------------------
| render element
|--------------------------------------------------------------------------
*/

/// Portal render element.
///
class PortalRenderElement extends HTMLRenderElementBase {
  PortalRenderElement(super.widget, super.parent);

  @override
  render({
    required covariant Portal widget,
  }) {
    var domNodeDescription = super.render(
      widget: widget,
    );

    domNodeDescription?.attributes?.addAll(
      _prepareAttributes(
        widget: widget,
        oldWidget: null,
      ),
    );

    return domNodeDescription;
  }

  @override
  update({
    required updateType,
    required covariant Portal oldWidget,
    required covariant Portal newWidget,
  }) {
    var domNodeDescription = super.update(
      updateType: updateType,
      oldWidget: oldWidget,
      newWidget: newWidget,
    );

    domNodeDescription?.attributes?.addAll(
      _prepareAttributes(
        widget: newWidget,
        oldWidget: oldWidget,
      ),
    );

    return domNodeDescription;
  }
}

/*
|--------------------------------------------------------------------------
| props
|--------------------------------------------------------------------------
*/

Map<String, String?> _prepareAttributes({
  required Portal widget,
  required Portal? oldWidget,
}) {
  var attributes = <String, String?>{};

  if (widget.referrerPolicy != oldWidget?.referrerPolicy) {
    attributes[Attributes.referrerPolicy] = widget.referrerPolicy;
  }

  if (widget.src != oldWidget?.src) {
    attributes[Attributes.src] = widget.src;
  }

  return attributes;
}
