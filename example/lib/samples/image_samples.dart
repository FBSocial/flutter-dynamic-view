import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kImageSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  TextData("宽度 200，高度 100 的图片"),
  ImageData(
    'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/39df74cbc6e53eb8732c447b4832e334.png?imageMogr2/thumbnail/x200',
    width: 200,
    height: 100,
  ),
  DividerData(),
  TextData("宽度 200，高度 100 的图片，适应模式为 cover"),
  ImageData(
    'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/39df74cbc6e53eb8732c447b4832e334.png?imageMogr2/thumbnail/x200',
    width: 200,
    height: 100,
    fit: BoxFit.cover,
  ),
  DividerData(),
  TextData("宽度 200，高度 100 的图片，右对齐"),
  ImageData(
    'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/39df74cbc6e53eb8732c447b4832e334.png?imageMogr2/thumbnail/x200',
    width: 200,
    height: 100,
    alignment: Alignment.centerRight,
  ),
  DividerData(),
  TextData("宽度 200，高度 100 的图片，横向重复"),
  ImageData(
    'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/39df74cbc6e53eb8732c447b4832e334.png?imageMogr2/thumbnail/x200',
    width: 200,
    height: 100,
    alignment: Alignment.centerRight,
    repeat: ImageRepeat.repeatX,
  ),
  DividerData(),
  TextData("应用九宫格缩放"),
  ImageData(
      'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/39df74cbc6e53eb8732c447b4832e334.png?imageMogr2/thumbnail/x200',
      width: 300,
      height: 200,
      centerSlice: const Rect.fromLTWH(66, 66, 66, 66)),
]);
