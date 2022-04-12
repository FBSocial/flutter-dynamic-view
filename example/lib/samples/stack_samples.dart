import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kStackSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  StackData(
    alignment: Alignment.center,
    textStyle: const TextStyleData(color: Colors.white, fontSize: 20),
    children: [
      ImageData("http://bing.getlove.cn/bingImage"),
      PositionedData(child: TextData("右上方"), right: 10, top: 10),
      TextData("中间")
    ],
  ),
]);
