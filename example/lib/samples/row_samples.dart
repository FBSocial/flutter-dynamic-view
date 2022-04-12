import 'package:dynamic_view/widgets/models/advance_widgets.dart';
import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kRowSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  TextData("有三个文本的行"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("使行所占的宽度最小化"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("子元素居中"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("元素间隔相等"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("每个元素左右的空间相等"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("每个元素包括左右边距相等"),
  ContainerData(
      backgroundColor: Colors.blue,
      child: RowData(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  DividerData(),
  TextData("垂直顶部对齐（默认是居中）"),
  ContainerData(
      height: 50,
      backgroundColor: Colors.blue,
      child: RowData(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextData('1'),
          TextData('2'),
          TextData('3'),
        ],
      )),
  MarkdownData("`crossAxisAlignment` 设置为 `stretch` 能在垂直方向撑开父容器"),
  DividerData(),
  RowData(
    children: [
      ContainerData(
        alignment: Alignment.center,
        backgroundColor: Colors.blue,
        height: 50,
        child: TextData('固定宽度'),
      ),
      ExpandedData(
          child: ContainerData(
        alignment: Alignment.center,
        backgroundColor: Colors.green,
        height: 50,
        child: MarkdownData("使用 `expanded` 自动填充剩余空间", shrinkWrap: true),
      )),
    ],
  ),
  MarkdownData("`flexible` 与 `expanded` 相反，尽可能使用最少的空间"),
  DividerData(),
  ContainerData(
    backgroundColor: Colors.blue,
    child: RowData(children: [
      TextData("左侧"),
      SpacerData(),
      TextData("右侧"),
    ]),
  ),
  MarkdownData("`Spacer` 可以填充空白"),
]);
