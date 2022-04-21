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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
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
                                children: [
                                  Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue, width: 3.0)),
                                      constraints:
                                          const BoxConstraints.tightFor(
                                              height: 300),
                                      child: SingleChildScrollView(
                                          child: SelectableText(
                                              prettyJson(samples[i].data)))),
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
