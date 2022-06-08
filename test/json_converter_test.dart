import 'package:dynamic_view/widgets/models/json_converters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("four args BoxConstraints", () {
    const c = BoxConstraints(
      minWidth: 10,
      minHeight: 20,
      maxWidth: 30,
      maxHeight: 40,
    );
    expect(const BoxConstraintsConverter().toJson(c), equals("10,20,30,40"));
    expect(const BoxConstraintsConverter().fromJson("10,20,30,40"), equals(c));
  });

  test("three args BoxConstraints", () {
    const c = BoxConstraints(
      minWidth: 10,
      minHeight: 20,
      maxWidth: 30,
    );
    expect(
        const BoxConstraintsConverter().toJson(c), equals("10,20,30,infinity"));
    expect(const BoxConstraintsConverter().fromJson("10,20,30"), equals(c));
  });

  test("two args BoxConstraints", () {
    const c = BoxConstraints(
      minWidth: 10,
      minHeight: 20,
    );
    expect(const BoxConstraintsConverter().toJson(c),
        equals("10,20,infinity,infinity"));
    expect(const BoxConstraintsConverter().fromJson("10,20"), equals(c));
  });

  test("one args BoxConstraints", () {
    const c = BoxConstraints(
      minWidth: 10,
    );
    expect(const BoxConstraintsConverter().toJson(c),
        equals("10,0,infinity,infinity"));
    expect(const BoxConstraintsConverter().fromJson("10"), c);
  });

  test("zero args BoxConstraints", () {
    const c = BoxConstraints();
    expect(const BoxConstraintsConverter().toJson(c),
        equals("0,0,infinity,infinity"));
    expect(const BoxConstraintsConverter().fromJson(""), c);
  });
}
