// Copyright 2022-2023 H. Singh<hamsbrar@gmail.com>. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

import 'package:meta/meta.dart';
import 'package:rad/rad.dart';

import 'package:rad_html_vscode/src/abstract/html_widget_base.dart';
import 'package:rad_html_vscode/src/patch.dart';

/// The Canvas widget (HTML's `canvas` tag).
///
@internal
class Canvas extends HTMLWidgetBase {
  /// The height of the coordinate space in CSS pixels. Defaults to 150.
  ///
  final String? height;

  /// The width of the coordinate space in CSS pixels. Defaults to 300.
  ///
  final String? width;

  const Canvas(
    List<Widget> children, {
    this.height,
    this.width,
    Key? key,
    void Function(Element? element)? ref,
    String? id,
    String? title,
    String? style,
    String? className,
    bool? hidden,
    EventCallback? onClick,
    Map<String, String>? additionalAttributes,
  }) : super(
          children,
          key: key,
          ref: ref,
          id: id,
          title: title,
          style: style,
          className: className,
          hidden: hidden,
          onClick: onClick,
          additionalAttributes: additionalAttributes,
        );

  @override
  DomTagType get correspondingTag => DomTagType.canvas;

  @override
  bool shouldUpdateWidget(covariant Canvas oldWidget) {
    return height != oldWidget.height ||
        width != oldWidget.width ||
        super.shouldUpdateWidget(oldWidget);
  }

  @override
  createRenderElement(parent) => CanvasRenderElement(this, parent);
}

/*
|--------------------------------------------------------------------------
| render element
|--------------------------------------------------------------------------
*/

/// Canvas render element.
///
class CanvasRenderElement extends HTMLRenderElementBase {
  CanvasRenderElement(super.widget, super.parent);

  @override
  render({
    required covariant Canvas widget,
  }) {
    var domNodePatch = super.render(
      widget: widget,
    );

    _extendAttributes(
      widget: widget,
      oldWidget: null,
      attributes: domNodePatch.attributes,
    );

    return domNodePatch;
  }

  @override
  update({
    required updateType,
    required covariant Canvas oldWidget,
    required covariant Canvas newWidget,
  }) {
    var domNodePatch = super.update(
      updateType: updateType,
      oldWidget: oldWidget,
      newWidget: newWidget,
    );

    _extendAttributes(
      widget: newWidget,
      oldWidget: oldWidget,
      attributes: domNodePatch.attributes,
    );

    return domNodePatch;
  }
}

/*
|--------------------------------------------------------------------------
| patch
|--------------------------------------------------------------------------
*/

void _extendAttributes({
  required Canvas widget,
  required Canvas? oldWidget,
  required Map<String, String?> attributes,
}) {
  if (widget.height != oldWidget?.height) {
    attributes[Attributes.height] = widget.height;
  }

  if (widget.width != oldWidget?.width) {
    attributes[Attributes.width] = widget.width;
  }
}
