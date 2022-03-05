// ignore_for_file: non_constant_identifier_names

// auto-generated. please don't edit this file

import 'package:rad/src/widgets/elements/text.dart';
import 'package:rad/src/widgets/layout/container.dart';
import 'package:rad/src/widgets/layout/stack.dart';
import 'package:rad/src/widgets/layout/align.dart';
import 'package:rad/src/widgets/main/navigator/route.dart';
import 'package:rad/src/widgets/elements/markup.dart';
import 'package:rad/src/widgets/layout/positioned.dart';
import 'package:rad/src/widgets/layout/overlay/overlay.dart';
import 'package:rad/src/widgets/layout/overlay/overlay_entry.dart';
import 'package:rad/src/widgets/main/navigator/navigator.dart';
import 'package:rad/src/widgets/main/stateful_widget.dart';
import 'package:rad/src/widgets/main/stateless_widget.dart';
import 'package:rad/src/widgets/misc/gesture_detector.dart';

final GEN_STYLES_MAIN_CSS = ""
    " html, "
    " body { "
    "     width: 100%; "
    "     height: 100%; "
    "     white-space: nowrap; "
    " } "
    "  "
    "  "
    " /** "
    "    * default text style "
    "    */ "
    "  "
    " [data-wtype=\"$Text\"] { "
    "     width: auto; "
    "     white-space: normal; "
    "     word-wrap: break-word; "
    " } "
    "  "
    "  "
    " /** "
    "    * Widgets that can have padding and/or border "
    "    */ "
    "  "
    " [data-wtype=\"$Container\"] { "
    "     box-sizing: border-box; "
    " } "
    "  "
    "  "
    " /** "
    "    * widgets without scrolls "
    "    * i.e widget's inner content will not be scrollable "
    "    */ "
    "  "
    " [data-wtype=\"$Container\"], "
    " [data-wtype=\"$Stack\"], "
    " [data-wtype=\"$Align\"], "
    " [data-wtype=\"$Route\"], "
    " [data-wtype=\"$MarkUp\"], "
    " [data-wtype=\"$Positioned\"] { "
    "     overflow: hidden; "
    " } "
    "  "
    "  "
    " /** "
    "    * widgets that should take as much space as possible "
    "    */ "
    "  "
    " [data-wtype=\"$Align\"], "
    " [data-wtype=\"$Stack\"], "
    " [data-wtype=\"$Container\"], "
    " [data-wtype=\"$Overlay\"], "
    " [data-wtype=\"$OverlayEntry\"], "
    "  "
    " /*  "
    "  below widgets are not stylable. only way to "
    "  limit their bounds is to wrap them in a stylable "
    "  widget such as container. "
    " */ "
    "  "
    " [data-wtype=\"$Route\"], "
    " [data-wtype=\"$Navigator\"], "
    " [data-wtype=\"$StatefulWidget\"], "
    " [data-wtype=\"$StatelessWidget\"], "
    " [data-wtype=\"$GestureDetector\"], "
    " [data-wtype=\"$MarkUp\"], "
    "  "
    " /*  "
    "  target is not a widget it refers to the div where app is mounted "
    " */ "
    "  "
    " [data-wtype=\"Target\"] { "
    "     width: 100%; "
    "     height: 100%; "
    " } "
    "  "
    "  "
    " /** "
    "    * widgets with block display "
    "    */ "
    "  "
    " [data-wtype=\"$Align\"], "
    " [data-wtype=\"$Stack\"], "
    " [data-wtype=\"$Overlay\"], "
    " [data-wtype=\"$Navigator\"], "
    " [data-wtype=\"$StatefulWidget\"], "
    " [data-wtype=\"$StatelessWidget\"], "
    " [data-wtype=\"$GestureDetector\"], "
    " [data-wtype=\"$Overlay\"], "
    " [data-wtype=\"$Container\"], "
    " [data-wtype=\"Target\"] { "
    "     display: block; "
    " } "
    "  "
    "  "
    " /** "
    "    * widgets that has relative position "
    "    * this allow child widgets to absolutly position themselves "
    "    */ "
    "  "
    " [data-wtype=\"$Navigator\"], "
    " [data-wtype=\"$Align\"], "
    " [data-wtype=\"$Overlay\"], "
    " [data-wtype=\"$Stack\"] { "
    "     position: relative; "
    " } "
    "  "
    "  "
    " /** "
    "    * widgets with absolute position "
    "    */ "
    "  "
    " [data-wtype=\"$Route\"], "
    " [data-wtype=\"$OverlayEntry\"], "
    "  "
    " /* align childs */ "
    "  "
    " [data-wtype=\"$Align\"]>*, "
    "  "
    " /* stack childs */ "
    "  "
    " [data-wtype=\"$Stack\"]>* { "
    "     position: absolute; "
    " } "
    "  "
    "  "
    " /** "
    "    * system (not-in-use for now) "
    "    */ "
    "  "
    " .rad-hidden { "
    "     display: none!important; "
    "     visibility: hidden!important; "
    " } ";
