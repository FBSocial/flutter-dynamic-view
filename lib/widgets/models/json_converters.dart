import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

/// this file defines json converters
/// which converts flutter built-in types to json

String _double2str(double v) {
  if (v.isInfinite) return 'infinity';
  if (v.toInt() == v) {
    return '${v.toInt()}';
  }
  return v.toString();
}

class BoxConstraintsConverter extends JsonConverter<BoxConstraints?, String?> {
  const BoxConstraintsConverter();

  @override
  BoxConstraints? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    final v = json.split(',');
    if (v.isEmpty) return null;

    return BoxConstraints(
      minWidth: double.tryParse(v[0]) ?? 0,
      minHeight: v.length > 1 ? (double.tryParse(v[1]) ?? 0) : 0,
      maxWidth: v.length > 2
          ? (double.tryParse(v[2]) ?? double.infinity)
          : double.infinity,
      maxHeight: v.length > 3
          ? (double.tryParse(v[3]) ?? double.infinity)
          : double.infinity,
    );
  }

  @override
  String? toJson(BoxConstraints? object) {
    if (object == null) {
      return null;
    }
    return '${_double2str(object.minWidth)},${_double2str(object.minHeight)},${_double2str(object.maxWidth)},${_double2str(object.maxHeight)}';
  }
}

/// convert flutter [Color] to css-style string
/// eg. red can be converted to '#ff0000' or 'ffff0000' or ff0000 or ffff0000
class ColorJsonConverter extends JsonConverter<Color, String> {
  const ColorJsonConverter();

  @override
  Color fromJson(String json) {
    json = json.replaceAll('#', '');
    if (json.length == 6) {
      json = 'ff' + json;
    }
    if (json.length == 8) {
      return Color(int.parse('0x$json'));
    }
    throw Exception('[dynamic_view] Invalid color string: $json');
  }

  @override
  String toJson(Color object) {
    // color to hex
    var outData = object.value.toRadixString(16);
    if (object.alpha == 255) {
      outData = outData.substring(2);
    }
    return outData;
  }
}

/// convert flutter [Alignment] to "x,y"
/// eg.
/// 1. Alignment.centerLeft can be converted to '0,1'
/// 2. Alignment.center can be converted to '0'
/// 3. Alignment.bottomRight can be converted to '1'
class AlignmentJsonConverter extends JsonConverter<Alignment, String> {
  const AlignmentJsonConverter();

  @override
  Alignment fromJson(String json) {
    final values = json.split(',');
    if (values.length == 1) {
      final val = double.parse(values.single);
      return Alignment(val, val);
    }

    return Alignment(double.parse(values.first), double.parse(values.last));
  }

  @override
  String toJson(Alignment object) {
    if (object.x == object.y) {
      return _double2str(object.x);
    } else {
      return '${_double2str(object.x)},${_double2str(object.y)}';
    }
  }
}

/// convert flutter [Rect] to "x,y,w,h"
/// eg. `Rect.fromLTWH(0, 0, 100, 100)` can be converted to '0,0,100,100'
class RectJsonConverter extends JsonConverter<Rect?, String?> {
  const RectJsonConverter();

  @override
  Rect? fromJson(String? json) {
    if (json == null) return null;
    final values = json.split(',');

    return Rect.fromLTWH(
      double.parse(values[0]),
      double.parse(values[1]),
      double.parse(values[2]),
      double.parse(values[3]),
    );
  }

  @override
  String? toJson(Rect? object) {
    if (object == null) return null;
    return '${_double2str(object.left)},${_double2str(object.top)},${_double2str(object.width)},${_double2str(object.height)}';
  }
}

/// See also:
///
/// * [edgeInsetsToJson] which convert [EdgeInsets] to json
EdgeInsets? edgeInsetsFromJson(String? json) {
  if (json == null || json.isEmpty) return null;
  final arr = json.split(",").map((e) => double.parse(e)).toList();
  if (arr.length == 1) {
    return EdgeInsets.all(arr.single);
  }
  if (arr.length == 2) {
    return EdgeInsets.symmetric(vertical: arr.last, horizontal: arr.first);
  }
  if (arr.length == 4) {
    return EdgeInsets.fromLTRB(arr[0], arr[1], arr[2], arr[3]);
  }
  return null;
}

/// convert flutter [EdgeInsets] to the fowllowing string:
/// 1. `EdgeInsets.all(10)` can be converted to '10'
/// 2. `EdgeInsets.only(left: 10, top: 20, right: 30, bottom: 40)` can be converted to '10,20,30,40'
/// 3. `EdgeInsets.symmetric(horizontal: 20, vertical: 10)` can be converted to '20,10'
String? edgeInsetsToJson(EdgeInsets? object) {
  if (object == null) return null;
  if (object.left == object.right &&
      object.left == object.top &&
      object.left == object.bottom) {
    return _double2str(object.left);
  }
  if (object.left == object.right && object.top == object.bottom) {
    return '${_double2str(object.left)},${_double2str(object.top)}';
  }
  return "${_double2str(object.left)},${_double2str(object.top)},${_double2str(object.right)},${_double2str(object.bottom)}";
}

/// convert flutter [BorderRadius] to "width,color"
/// eg.
/// `BorderSide.all(width: 10, color: Colors.red)` can be converted to '10,red'
class BorderSideConverter extends JsonConverter<BorderSide?, String?> {
  const BorderSideConverter();

  @override
  BorderSide? fromJson(String? json) {
    if (json == null) return null;
    final values = json.split(',');
    if (values.length == 1) {
      final val = double.parse(values.single);
      return BorderSide(width: val);
    }

    return BorderSide(
      color: const ColorJsonConverter().fromJson(values[1])!,
      width: double.parse(values[0]),
    );
  }

  @override
  String? toJson(BorderSide? object) {
    if (object == null) return null;
    return '${_double2str(object.width)},${const ColorJsonConverter().toJson(object.color)}';
  }
}

/// double is converted to string with decimal, even if the decimal part is 0
/// [DoubleOrNullConverter] treat 1.0 as 1
class DoubleOrNullConverter extends JsonConverter<double?, num?> {
  const DoubleOrNullConverter();

  @override
  double? fromJson(num? json) {
    if (json == null) return null;
    return json.toDouble();
  }

  @override
  num? toJson(double? object) {
    if (object == null) return null;
    if (object.toInt() == object) {
      return object.toInt();
    } else {
      return object;
    }
  }
}
