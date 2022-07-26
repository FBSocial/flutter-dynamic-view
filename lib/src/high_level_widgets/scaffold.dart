import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:dynamic_view/widgets/views/widget_views.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'scaffold.g.dart';

enum ScaffoldHeaderTemplate {
  blue,
}

extension ScaffoldHeaderTemplateX on ScaffoldHeaderTemplate {
  Color get color {
    switch (this) {
      case ScaffoldHeaderTemplate.blue:
        return const Color(0xFF198CFE);
    }
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScaffoldHeader {
  final String title;
  final ScaffoldHeaderTemplate template;

  ScaffoldHeader(
      {required this.title, this.template = ScaffoldHeaderTemplate.blue});

  factory ScaffoldHeader.fromJson(Map<String, dynamic> json) =>
      _$ScaffoldHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$ScaffoldHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ScaffoldData {
  final ScaffoldHeader? header;
  final WidgetData body;

  ScaffoldData({this.header, required this.body});

  factory ScaffoldData.fromJson(Map<String, dynamic> json) =>
      _$ScaffoldDataFromJson(json);
  Map<String, dynamic> toJson() => _$ScaffoldDataToJson(this);
}

class Scaffold extends StatelessWidget {
  final ScaffoldData data;

  const Scaffold(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(12),
        child: DynamicView.fromData(data.body));
    if (data.header == null) return body;
    final headerColor = data.header!.template.color;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            headerColor.withOpacity(0.15),
            headerColor.withOpacity(0.05),
          ])),
          child: Text(
            data.header!.title,
            maxLines: 1,
            style: TextStyle(color: headerColor),
          ),
        ),
        body,
      ],
    );
  }
}
