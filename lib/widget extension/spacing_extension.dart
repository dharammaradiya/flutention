import 'package:flutter/material.dart';

extension WidgetPaddingExtensions on Widget {
  /// Adds padding to a widget using EdgeInsets
  Padding pad(EdgeInsets insets) => Padding(padding: insets, child: this);

  /// Adds padding to all sides
  Padding padAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Adds symmetric padding (horizontal & vertical)
  Padding padSymmetric({double h = 0, double v = 0}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: h, vertical: v), child: this);
}

extension WidgetMarginExtensions on Widget {
  /// Wraps the widget with a Container to apply margin
  Widget margin(EdgeInsets insets) => Container(margin: insets, child: this);

  /// Adds margin to all sides
  Widget marginAll(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// Adds symmetric margin (horizontal & vertical)
  Widget marginSymmetric({double h = 0, double v = 0}) => Container(
      margin: EdgeInsets.symmetric(horizontal: h, vertical: v), child: this);
}
