import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Demonstrating Text Extensions
          Text("Bold Text").bold.size(20),
          Text("Italic Text").italic.color(Colors.blue),
          Text("Underlined Text").underline.color(Colors.green),
          Text("Thick Red Text").thick.color(Colors.red).size(22),
          Text("Large and Spaced Text")
              .size(26)
              .letterSpacing(2)
              .wordSpacing(4),
          Text("Aligned Center Text").alignCenter,
          Text("Aligned Right Text").alignRight,
          Text("Aligned Left Text").alignLeft,
          Text("Justified Text").alignJustify,
          Text("Ellipsis Overflow Text").ellipsisOverFlow,
          Text("Clipped Overflow Text").clipOverFlow,
          Text("Visible Overflow Text").visibleOverFlow,
          Text("No Wrap Text").noWrap,
          Text("Wrapped Text").wrap,
          Text("Max Line 1 Text").maxLine(1),

          const SizedBox(height: 20),
          // Demonstrating RichText with TextSpan Extensions
          RichText(
            text: TextSpan(
              text: "Hello ",
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                        text: "Bold",
                        style: const TextStyle(fontWeight: FontWeight.bold))
                    .color(Colors.red),
                TextSpan(text: " Italic").italic.size(22),
                TextSpan(text: " Blue Underline").underline.color(Colors.blue),
                TextSpan(text: " Thick Yellow").thick.color(Colors.yellow),
                TextSpan(text: " Spaced Lettering").letterSpacing(3),
                TextSpan(text: " Word Spacing Increased").wordSpacing(5),
                TextSpan(text: " Large Font").size(30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
