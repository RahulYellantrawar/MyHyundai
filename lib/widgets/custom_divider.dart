import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  Color color;
  double? indent;
  double? endIndent;

  CustomDivider({
    super.key,
    required this.color,
    this.indent = 15,
    this.endIndent = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: 20,
      thickness: 1,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
