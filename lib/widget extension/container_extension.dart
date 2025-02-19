import 'package:flutter/material.dart';

extension CustomContainerExtension on Widget {
  Widget customContainer({
    double? width,
    double? height,
    Color color = Colors.white,
    double tP = 10,
    double bP = 10,
    double lP = 10,
    double rP = 10,
    double tM = 10,
    double bM = 10,
    double lM = 10,
    double rM = 10,
    double borderRadius = 10.0,
    AlignmentGeometry? alignment,
    Clip clipBehavior = Clip.antiAlias,
    List<BoxShadow> boxShadow = const [
      BoxShadow(
        color: Colors.grey,
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
    bool isShadow = true,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    BoxConstraints? constraints,
    Matrix4? transform,
    Function()? onTap,
    Gradient? gradient,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: clipBehavior,
        alignment: alignment,
        width: width,
        height: height,
        padding: EdgeInsets.only(top: tP, bottom: bP, left: lP, right: rP),
        margin: EdgeInsets.only(top: tM, bottom: bM, left: lM, right: rM),
        constraints: constraints,
        transform: transform,
        decoration: decoration ??
            BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: isShadow ? boxShadow : null,
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: gradient ?? null,
            ),
        foregroundDecoration: foregroundDecoration,
        child: this,
      ),
    );
  }
}
