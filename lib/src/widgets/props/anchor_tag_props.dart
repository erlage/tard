import 'dart:html';

import 'package:rad/src/widgets/props/common_tag_props.dart';

class AnchorTagProps {
  String? href;
  String? rel;

  String? download;

  String? target;

  String? classes;

  Map<String, String>? dataset;

  AnchorTagProps({
    this.href,
    this.rel,
    this.download,
    this.classes,
    this.target,
    this.dataset,
  });

  // application

  /// Apply props.
  ///
  /// if [updatedProps] is not null, it'll do a update
  ///
  void apply(HtmlElement element, [AnchorTagProps? updatedProps]) {
    if (null == updatedProps) {
      return _applyProps(element, this);
    }

    if (_isChanged(updatedProps)) {
      _clearProps(element, this);
      _switchProps(updatedProps);
      _applyProps(element, this);
    }
  }

  bool _isChanged(AnchorTagProps props) {
    return href != props.href ||
        rel != props.rel ||
        download != props.download ||
        classes != props.classes ||
        target != props.target ||
        dataset != props.dataset;
  }

  void _switchProps(AnchorTagProps updatedProps) {
    this
      ..href = updatedProps.href
      ..rel = updatedProps.rel
      ..download = updatedProps.download
      ..classes = updatedProps.classes
      ..target = updatedProps.target
      ..dataset = updatedProps.dataset;
  }

  // statics

  static void _applyProps(HtmlElement element, AnchorTagProps props) {
    element as AnchorElement;

    if (null != props.href) {
      element.href = props.href;
    }

    if (null != props.rel) {
      element.rel = props.rel!;
    }

    if (null != props.download) {
      element.download = props.download;
    }

    if (null != props.target) {
      element.target = props.target!;
    }

    CommonTagProps.applyClasses(element, props.classes);
    CommonTagProps.applyDataset(element, props.dataset);
  }

  static void _clearProps(HtmlElement element, AnchorTagProps props) {
    element as AnchorElement;

    if (null != props.href) {
      element.href = "";
    }

    if (null != props.rel) {
      element.rel = "";
    }

    if (null != props.target) {
      element.target = "";
    }

    CommonTagProps.clearClasses(element, props.classes);
    CommonTagProps.clearDataset(element, props.dataset);
  }
}
