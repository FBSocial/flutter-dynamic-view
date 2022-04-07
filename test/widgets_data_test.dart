import 'package:dynamic_view/widgets/models/base_widgets.dart' as dv;
import 'package:dynamic_view/widgets/models/layouts.dart' as dv;
import 'package:dynamic_view/widgets/models/widgets.dart' as dv;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('full text fields', () {
    final text = dv.Text(
      'Text',
      style: const dv.TextStyle(
        fontSize: 20,
        color: Colors.red,
        backgroundColor: Colors.green,
      ),
      textAlign: TextAlign.center,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
    expect(
        text.toJson(),
        equals({
          "tag": "text",
          "data": "Text",
          "style": {
            "color": "f44336",
            "backgroundColor": "4caf50",
            "fontSize": 20
          },
          "textAlign": "center",
          "softWrap": true,
          "overflow": "ellipsis",
          "maxLines": 2
        }));
  });

  test('no optional text fields', () {
    final text = dv.Text('Text');
    expect(text.toJson(), equals({"tag": "text", "data": "Text"}));
  });

  test('row', () {
    final json = {
      "tag": "row",
      "children": [
        {"tag": "text", "data": "t"},
        {
          "tag": "container",
          "child": {"tag": "text", "data": "2"}
        }
      ]
    };
    final row = dv.Row(children: [
      dv.Text("t"),
      dv.Container(child: dv.Text("2")),
    ]);
    expect(row.toJson(), equals(json));
    expect(dv.Widget.fromJson(json), row);
  });
}
