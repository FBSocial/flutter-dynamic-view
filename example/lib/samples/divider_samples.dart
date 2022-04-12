import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kDividerSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  TextData("默认分割线"),
  DividerData(),
  TextData("自定义颜色", padding: const EdgeInsets.only(top: 20)),
  DividerData(color: Colors.red),
  TextData("自定义粗细", padding: const EdgeInsets.only(top: 20)),
  DividerData(thickness: 5),
]);
