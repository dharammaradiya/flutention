import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension ListAnimationExtension on Widget {
  Widget listAnimation({
    required int position,
    double? verticalOffset,
    double? horizontalOffset,
    Duration? delay = const Duration(milliseconds: 0),
  }) {
    return AnimationConfiguration.staggeredList(
      position: position,
      child: FadeInAnimation(
        delay: delay,
        duration: 400.ms,
        curve: Curves.decelerate,
        child: SlideAnimation(
          delay: delay,
          duration: 400.ms,
          curve: Curves.decelerate,
          horizontalOffset: horizontalOffset,
          verticalOffset: verticalOffset ?? -40,
          child: this,
        ),
      ),
    );
  }
}
