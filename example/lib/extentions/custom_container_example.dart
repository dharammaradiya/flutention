import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class CustomContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Container Example")),
      body: Center(
        child: Text("Hello, Flutter!").customContainer(
          width: 200,
          height: 100,
          color: Colors.blue,
          tP: 15,
          bP: 15,
          lP: 20,
          rP: 20,
          tM: 30,
          bM: 30,
          lM: 25,
          rM: 25,
          borderRadius: 20,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(2, 4),
            ),
          ],
          isShadow: true,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundDecoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          constraints: BoxConstraints(
            minWidth: 150,
            minHeight: 80,
            maxWidth: 250,
            maxHeight: 120,
          ),
          transform: Matrix4.rotationZ(0.05),
          onTap: () {
            print("Container tapped!");
          },
        ),
      ),
    );
  }
}
