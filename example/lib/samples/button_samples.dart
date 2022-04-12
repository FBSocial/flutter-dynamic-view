import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/cupertino.dart';

final kButtonSamples =
    ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
  ButtonData(child: TextData("Outlined"), type: ButtonType.outlined),
  DividerData(),
  ButtonData(child: TextData("Text"), type: ButtonType.text),
  DividerData(),
  ButtonData(child: TextData("Elevated"), type: ButtonType.elevated),
  DividerData(),
  TextData("自定义图片的按钮"),
  ContainerData(
      width: 100,
      height: 50,
      child: ButtonData(
        child: ImageData(
            'https://fb-cdn.fanbook.mobi/fanbook/app/files/chatroom/image/8fdf108d4afffc1120cab8e0fe461bd5.png'),
      )),
]);
