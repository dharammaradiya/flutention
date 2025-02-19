import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

// ********* HOME SCREEN ********* //
class NavigationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.push(SecondScreenForNavigation()),
              child: Text('Push Unnamed Route'),
            ),
            ElevatedButton(
              onPressed: () =>
                  context.pushNamed('/secondForNavigation', arguments: 'Hello from Home!'),
              child: Text('Push Named Route with Arguments'),
            ),
            ElevatedButton(
              onPressed: () => context.pushWithTransition(SecondScreenForNavigation(),
                  transitionType: TransitionType.slide),
              child: Text('Push with Custom Transition'),
            ),
            ElevatedButton(
              onPressed: () => context.pushReplacement(SecondScreenForNavigation()),
              child: Text('Push Replacement'),
            ),
            ElevatedButton(
              onPressed: () => context.pushAndRemoveUntil(SecondScreenForNavigation()),
              child: Text('Push & Remove Until'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await context.showDialogBox<String>(
                  dialog: AlertDialog(
                    title: Text('Sample Dialog'),
                    content: Text('Click OK to return data'),
                    actions: [
                      TextButton(
                        onPressed: () => context.popWithResult('Dialog Result!'),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Dialog Result: $result')));
              },
              child: Text('Show Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await context.showBottomSheet<String>(
                  sheet: Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text('This is a Bottom Sheet'),
                        ElevatedButton(
                          onPressed: () => context.popWithResult('Bottom Sheet Closed!'),
                          child: Text('Close'),
                        ),
                      ],
                    ),
                  ),
                );
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Bottom Sheet Result: $result')));
              },
              child: Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}

// ********* SECOND SCREEN ********* //
class SecondScreenForNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? args = context.getArguments<String>();

    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args ?? 'No Arguments Passed', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: Text('Pop Back'),
            ),
            ElevatedButton(
              onPressed: () => context.popWithResult('Data from SecondScreen'),
              child: Text('Pop with Result'),
            ),
          ],
        ),
      ),
    );
  }
}
