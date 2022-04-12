import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:flutter/material.dart';

final kGridViewSamples = ColumnData(children: [
  ContainerData(
      alignment: Alignment.center,
      width: 300,
      child: GridViewData(
        textStyle: const TextStyleData(fontSize: 20, color: Colors.white),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        childAspectRatio: 2,
        shrikWrap: true,
        children: [
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("1"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("2"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("3"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("4"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("5"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("6"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("7"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("8"),
          ),
          ContainerData(
            alignment: Alignment.center,
            backgroundColor: Colors.blue,
            child: TextData("9"),
          ),
        ],
      ))
]);
