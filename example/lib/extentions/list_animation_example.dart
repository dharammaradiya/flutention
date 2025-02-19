import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimationWidget extends StatelessWidget {
  const ListAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Animation Example")),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Item $index",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ).listAnimation(position: index);
          },
        ),
      ),
    );
  }
}
