import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class GradientExample extends StatelessWidget {
  const GradientExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gradient Extensions Example")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientBox(
              title: "Linear Gradient",
              gradient: GradientExtensions.createLinearGradient(Colors.blue, Colors.purple),
            ),
            GradientBox(
              title: "Radial Gradient",
              gradient: GradientExtensions.createRadialGradient(Colors.orange, Colors.red),
            ),
            GradientBox(
              title: "Sweep Gradient",
              gradient: GradientExtensions.createSweepGradient(Colors.green, Colors.blue),
            ),
            GradientBox(
              title: "Multi-Color Linear Gradient",
              gradient: GradientExtensions.createMultiColorLinearGradient(
                [Colors.pink, Colors.blue, Colors.purple],
              ),
            ),
            GradientBox(
              title: "Multi-Color Radial Gradient",
              gradient: GradientExtensions.createRadialGradientMultipleColors(
                [Colors.yellow, Colors.red, Colors.blue],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientBox extends StatelessWidget {
  final String title;
  final Gradient gradient;

  const GradientBox({Key? key, required this.title, required this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
    ).bold.customContainer(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(gradient: gradient),
          bM: 20,
          rM: 20,
          lM: 20,
          tM: 20,
          alignment: Alignment.center,
        );
  }
}
