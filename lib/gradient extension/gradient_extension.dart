import 'package:flutter/material.dart';

extension GradientExtensions on Gradient {
  static LinearGradient createLinearGradient(
    Color color1, 
    Color color2, {
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
    int stops = 2,
  }) {
    List<Color> colors = [color1, color2];
    List<double> stopsList = List.generate(stops, (index) => index / (stops - 1));

    return LinearGradient(
      colors: colors,
      stops: stopsList.length == colors.length ? stopsList : null,  // Ensure same length
      begin: begin,
      end: end,
    );
  }

  static RadialGradient createRadialGradient(
    Color color1,
    Color color2, {
    Alignment center = Alignment.center,
    double radius = 0.5,
    int stops = 2,
  }) {
    List<Color> colors = [color1, color2];
    List<double> stopsList = List.generate(stops, (index) => index / (stops - 1));

    return RadialGradient(
      colors: colors,
      stops: stopsList.length == colors.length ? stopsList : null,  // Ensure same length
      center: center,
      radius: radius,
    );
  }

  static SweepGradient createSweepGradient(
    Color color1,
    Color color2, {
    Alignment center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 6.28, 
    int stops = 2,
  }) {
    List<Color> colors = [color1, color2];
    List<double> stopsList = List.generate(stops, (index) => index / (stops - 1));

    return SweepGradient(
      colors: colors,
      stops: stopsList.length == colors.length ? stopsList : null,  // Ensure same length
      center: center,
      startAngle: startAngle,
      endAngle: endAngle,
    );
  }

  static LinearGradient createMultiColorLinearGradient(
    List<Color> colors, {
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
    List<double>? stops,
  }) {
    if (stops != null && stops.length != colors.length) {
      stops = null;  // Reset stops if not matching colors length
    }
    return LinearGradient(
      colors: colors,
      stops: stops,
      begin: begin,
      end: end,
    );
  }

  static RadialGradient createRadialGradientMultipleColors(
    List<Color> colors, {
    Alignment center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
  }) {
    return RadialGradient(
      colors: colors,
      stops: stops,
      center: center,
      radius: radius,
    );
  }

  static LinearGradient createDiagonalGradient(
    Color color1, 
    Color color2, {
    int stops = 2,
  }) {
    List<Color> colors = [color1, color2];
    List<double> stopsList = List.generate(stops, (index) => index / (stops - 1));

    return LinearGradient(
      colors: colors,
      stops: stopsList.length == colors.length ? stopsList : null,  // Ensure same length
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static LinearGradient createColorFilterGradient(
    Color color1, 
    Color color2, {
    int stops = 2,
  }) {
    List<Color> colors = [color1, color2];
    List<double> stopsList = List.generate(stops, (index) => index / (stops - 1));

    return LinearGradient(
      colors: colors,
      stops: stopsList.length == colors.length ? stopsList : null,  // Ensure same length
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
