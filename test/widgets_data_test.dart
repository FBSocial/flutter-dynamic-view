import 'package:dynamic_view/widgets/models/base_widgets.dart' as dv;
import 'package:dynamic_view/widgets/models/layouts.dart' as dv;
import 'package:dynamic_view/widgets/models/widgets.dart' as dv;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('full text fields', () {
    final text = dv.TextData(
      'Text',
      style: const dv.TextStyleData(
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
    final text = dv.TextData('Text');
    expect(text.toJson(), equals({"tag": "text", "data": "Text"}));
  });

  test('test Row widget', () {
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
    final row = dv.RowData(children: [
      dv.TextData("t"),
      dv.ContainerData(child: dv.TextData("2")),
    ]);
    expect(row.toJson(), equals(json));
    expect(dv.WidgetData.fromJson(json), row);
  });

  test('test widget tree', () {
    final json = {
      'tag': 'container',
      'child': {
        'tag': 'row',
        'children': [
          {'tag': 'text', 'data': 't'},
          {
            'tag': 'container',
            'child': {'tag': 'text', 'data': '2'}
          }
        ]
      },
      'width': 100.0,
      'height': 200.0
    };
    final row = dv.ContainerData(
        width: 100,
        height: 200,
        child: dv.RowData(children: [
          dv.TextData("t"),
          dv.ContainerData(child: dv.TextData("2")),
        ]));
    expect(row.toJson(), equals(json));
    expect(dv.WidgetData.fromJson(json), row);
  });
}
