import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension ShimmerExtension on Widget {
  Widget showShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade200,
      child: this,
    );
  }
}
