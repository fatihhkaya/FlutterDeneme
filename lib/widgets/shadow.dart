import 'package:flutter/material.dart';

class ShadowWidget extends StatelessWidget {
  const ShadowWidget({Key key, @required this.child, this.color,this.elevation}) : super(key: key);

  final Widget child;
  final double elevation;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Material(
        shadowColor:this.color ?? Colors.green,
        elevation: this.elevation ?? 50,
        child: this.child);
  }
}
