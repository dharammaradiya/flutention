import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

import 'extentions/custom_container_example.dart';
import 'extentions/custom_text_field.dart';
import 'extentions/date_time_example.dart';
import 'extentions/gradient_example.dart';
import 'extentions/int_example.dart';
import 'extentions/list_animation_example.dart';
import 'extentions/navigation_example.dart';
import 'extentions/navigation_transition_example.dart';
import 'extentions/shimmer_example.dart';
import 'extentions/string_example.dart';
import 'extentions/text_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => MyApp(),
          '/secondForNavigation': (context) => SecondScreenForNavigation(),
        },
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutention Example'),
          ),
          body: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text('${extentions[index]}'),
              onTap: () {
                context.push(widgets[index]);
              },
            );
          }),
        ));
  }
}

List extentions = [
  "Navigation Extensions",
  "Integer Extensions",
  "String Extensions",
  "Date Time Extentions"
      "Gradient Extensions",
  "Navigation Transition Extensions",
  "Custom Container Example",
  "List Animation Example",
  "Shimmer Effect Example",
  "Text Extensions",
  "Custom TextField Example",
];

List<Widget> widgets = [
  NavigationExample(),
  IntExample(),
  StringExample(),
  DateTimeExample(),
  GradientExample(),
  NavigationTransitionExample(),
  CustomContainerExample(),
  ListAnimationWidget(),
  ShimmerListWidget(),
  TextExample(),
  CustomTextFieldExample(),
];
