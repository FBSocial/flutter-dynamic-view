import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kContainerSamples = ColumnData(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    DividerData(),
    TextData("这是一个基础的容器，设置了尺寸和背景："),
    ContainerData(width: 100, height: 100, backgroundColor: Colors.blue),
    DividerData(),
    TextData("在上面的基础上增加了边框和圆角"),
    ContainerData(
        width: 100,
        height: 100,
        backgroundColor: Colors.blue,
        border: const BorderData(color: Colors.red, width: 2, radius: 20)),
    DividerData(),
    TextData("设置了右下角对齐"),
    ContainerData(
      width: 100,
      height: 100,
      backgroundColor: Colors.blue,
      alignment: Alignment.bottomRight,
      child: TextData("Hello"),
    ),
  ],
);
