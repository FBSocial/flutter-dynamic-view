import 'package:characters/characters.dart';

extension StringX on String {
  String get breakWord {
    return characters.map((e) => "$e\u{200B}").join();
  }
}
