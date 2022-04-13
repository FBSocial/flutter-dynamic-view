// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_widgets.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MarkdownData extends WidgetData {
  final String data;
  final bool? shrinkWrap;

  MarkdownData(this.data, {this.shrinkWrap}) : super(WidgetTag.markdown);

  factory MarkdownData.fromJson(Map<String, dynamic> json) =>
      _$MarkdownDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MarkdownDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MarkdownData && other.data == data;
  }

  @override
  String toString() {
    return 'Markdown{data: $data}';
  }
}
