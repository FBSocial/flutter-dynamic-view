import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_view/dynamic_view.dart';
import 'package:example/samples/samples.dart';
import 'package:example/widget_sample_tree.dart';
import 'package:flutter/material.dart';
import 'package:json_editor/json_editor.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) =>
          ResponsiveWrapper.builder(widget,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
              background: Container(color: const Color(0xFFF5F5F5))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ValueNotifier<String> selectedSample = ValueNotifier<String>("text");
  ValueNotifier<JsonElement> code = ValueNotifier<JsonElement>(
      JsonElement.fromJson(samples['text']!.toJson()));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    selectedSample.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is NodeSelected) {
            if (notification.sample != selectedSample.value) {
              selectedSample.value = notification.sample;
              code.value = samples.containsKey(notification.sample)
                  ? JsonElement.fromString(
                  jsonEncode(samples[notification.sample]!))
                  : JsonElement.fromJson({notification.sample: "Not Found"});
            }
          }
          return false;
        },
        child: Row(
          children: [
            const SizedBox(
              width: 200,
              child: WidgetSampleTree(),
            ),
            const VerticalDivider(),
            Expanded(
              child: ValueListenableBuilder<String>(
                  valueListenable: selectedSample,
                  builder: (context, sample, child) =>
                      JsonEditor.object(
                        object:
                        samples[sample]?.toJson() ?? {sample: "not found"},
                        onValueChanged: (value) => code.value = value,
                      )),
            ),
            const VerticalDivider(),
            Expanded(
                child: SingleChildScrollView(
                  child: ValueListenableBuilder<JsonElement>(
                    valueListenable: code,
                    builder: (context, code, child) {
                      try {
                        return DynamicView.fromMap(jsonDecode(code.toString()));
                      } catch (e) {
                        log(e.toString(), error: e);
                        return const Center(child: Text("数据错误"));
                      }
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
