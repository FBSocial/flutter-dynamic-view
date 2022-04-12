import 'package:dynamic_view/dynamic_view.dart';
import 'package:dynamic_view/widgets/models/advance_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AdvanceWidgets {
  AdvanceWidgets._();

  static Widget markdownFrom(MarkdownData data) {
    Widget widget = MarkdownBody(
      data: data.data,
      onTapLink: (text, href, title) => DynamicView.config.onClick(href),
      shrinkWrap: true,
    );
    if (data.shrinkWrap == true) {
      widget = IntrinsicHeight(child: widget);
    }
    return widget;
  }
}
