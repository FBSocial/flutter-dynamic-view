import 'dart:developer';

import 'package:dynamic_view/dynamic_view.dart';
import 'package:dynamic_view/widgets/models/advance_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_quill/markdown_quill.dart';

final mdDocument = md.Document(encodeHtml: false);

final mdToDelta = MarkdownToDelta(markdownDocument: mdDocument);

class AdvanceWidgets {
  AdvanceWidgets._();

  static Widget markdownFrom(MarkdownData data) {
    Object? delta;
    try {
      delta = mdToDelta.convert(data.data);
    } catch (e) {
      log(e.toString(), error: e);
    }
    return DynamicView.config.markdownBuilder(delta);
  }
}
