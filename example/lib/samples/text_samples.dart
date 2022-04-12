import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kTextSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  TextData("设置文字大小、颜色和粗体（只支持 normal 和 medium）",
      style: const TextStyleData(
        fontSize: 16,
        color: Colors.blue,
        fontWeight: FontWeightData.medium,
      )),
  DividerData(),
  TextData("设置文字背景颜色",
      style: const TextStyleData(
        backgroundColor: Colors.yellow,
      )),
  DividerData(),
  ColumnData(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    TextData(
      "文字居中对齐",
      textAlign: TextAlign.center,
    ),
    TextData(
      "文字右对齐",
      textAlign: TextAlign.right,
    )
  ]),
  DividerData(),
  TextData(
    "限制最大 2 行，超出部分显示为省略号。When you have some text, how can you choose a typeface? Many people—professional designers included—go through an app’s font menu until we find one we like. But the aim of this module is to show that there are many considerations that can improve our type choices. By setting some useful constraints to aid our type selection, we can also develop a critical eye for analyzing type along the way.",
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  )
]);
