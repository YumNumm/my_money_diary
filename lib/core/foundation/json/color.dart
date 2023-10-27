import 'dart:ui';

String? colorToHexNullable(Color? color) => color?.value.toRadixString(16);
Color? colorFromHexNullable(String? hex) =>
    hex == null ? null : Color(int.parse(hex, radix: 16));
