import 'dart:convert';

import 'package:dynamic_view/dynamic_view.dart';
import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/material.dart';

String prettyJson(dynamic json) {
  final spaces = ' ' * 4;
  final encoder = JsonEncoder.withIndent(spaces);
  return encoder.convert(json);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class SampleItem {
  final String label;
  final WidgetData data;

  SampleItem(this.label, this.data);
}

class _MyHomePageState extends State<MyHomePage> {
  final samples = [
    SampleItem(
      'Text',
      ColumnData(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextData("设置文字大小、颜色和粗体",
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
          "限制最大 2 行，超出部分显示为省略号。限制最大 2 行，超出部分显示为省略号。限制最大 2 行，超出部分显示为省略号。限制最大 2 行，超出部分显示为省略号。",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ]),
    ),
    SampleItem(
        "分隔线",
        ColumnData(children: [
          TextData("默认分隔线"),
          DividerData(),
          TextData("横向分隔线"),
          DividerData(
            thickness: 2,
            color: Colors.blue,
          ),
          TextData("纵向分隔线"),
          ContainerData(
              height: 100,
              child: DividerData(
                thickness: 2,
                vertical: true,
                color: Colors.blue,
              )),
        ])),
    SampleItem(
        "宽高比",
        ContainerData(
            border: const BorderData(color: Colors.red),
            width: 100,
            height: 300,
            alignment: Alignment.center,
            child: AspectRatioData(
                ratio: 1,
                child: ContainerData(
                  backgroundColor: Colors.blue,
                )))),
    SampleItem(
        "容器",
        ColumnData(children: [
          ContainerData(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.blue,
            border: const BorderData(
              color: Colors.red,
              width: 2,
              radius: 5,
            ),
            alignment: Alignment.center,
            child: ContainerData(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.green,
              border: const BorderData(radius: 5),
              child: TextData("双层容器"),
            ),
          ),
          ContainerData(
              backgroundColor: Colors.yellowAccent,
              constraints: const BoxConstraints(minHeight: 100),
              child: TextData("设置了最小高度")),
        ])),
    SampleItem(
      "flex",
      ColumnData(children: [
        RowData(children: [
          ContainerData(
            width: 50,
            height: 50,
            flex: "tight",
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.red,
          ),
          ContainerData(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.green,
          ),
        ]),
        RowData(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextData("Item 1"),
          TextData("Item 2"),
          TextData("Item 3"),
          TextData("Item 4"),
          TextData("Item 5"),
        ])
      ]),
    ),
    SampleItem(
        "绝对布局",
        StackData(children: [
          ContainerData(
            width: 300,
            height: 300,
            backgroundColor: Colors.blueGrey,
          ),
          PositionedData(left: 0, top: 0, child: TextData("左上")),
          PositionedData(left: 0, bottom: 0, child: TextData("左下")),
          PositionedData(right: 1, top: 0, child: TextData("右上")),
          PositionedData(right: 1, bottom: 1, child: TextData("右下")),
          PositionedData(child: TextData("居中")),
        ])),
    SampleItem(
        "表格布局",
        ContainerData(
            height: 200,
            child: GridViewData(
              textStyle: const TextStyleData(fontSize: 20, color: Colors.black),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              childAspectRatio: 2,
              shrikWrap: true,
              children: [
                TextData("1"),
                TextData("2"),
                TextData("3"),
                TextData("4"),
                TextData("5"),
                TextData("6"),
                TextData("7"),
                TextData("8"),
                TextData("9"),
              ],
            ))),
    SampleItem(
        "流式布局",
        ContainerData(
            width: 200,
            child: WrapData(spacing: 20, runSpacing: 10, children: [
              ContainerData(
                  width: 50, height: 50, backgroundColor: Colors.primaries[0]),
              ContainerData(
                  width: 100, height: 50, backgroundColor: Colors.primaries[1]),
              ContainerData(
                  width: 50, height: 50, backgroundColor: Colors.primaries[2]),
              ContainerData(
                  width: 40, height: 50, backgroundColor: Colors.primaries[3]),
              ContainerData(
                  width: 50, height: 50, backgroundColor: Colors.primaries[4]),
              ContainerData(
                  width: 80, height: 50, backgroundColor: Colors.primaries[5]),
              ContainerData(
                  width: 50, height: 50, backgroundColor: Colors.primaries[6]),
              ContainerData(
                  width: 150, height: 50, backgroundColor: Colors.primaries[7]),
            ]))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: samples.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(samples[i].label),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                              appBar: AppBar(
                                title: Text(samples[i].label),
                              ),
                              body: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue, width: 3.0)),
                                      height: 300,
                                      child: SelectableText(
                                          prettyJson(samples[i].data))),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue, width: 3.0)),
                                    margin: const EdgeInsets.all(8.0),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: DynamicView.fromData(
                                            samples[i].data)),
                                  )),
                                ],
                              ))));
                },
              );
            }));
  }
}
