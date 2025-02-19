import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class NavigationTransitionExample extends StatelessWidget {
  final List<TransitionType> transitions = TransitionType.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Transition Example')),
      body: ListView.builder(
        itemCount: transitions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(transitions[index].toString().split('.').last),
            onTap: () {
              context.pushWithTransition(
                DetailScreen(title: transitions[index].toString().split('.').last),
                transitionType: transitions[index],
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;

  const DetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
