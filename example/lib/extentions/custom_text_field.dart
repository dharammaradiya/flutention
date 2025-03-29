import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom TextField Example")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Enter your name",
                keyboardType: TextInputType.name,
                textCapitalization: TextCapitalization.words,
                borderColor: Colors.grey,
                focusedBorderColor: Colors.blue,
                enabledBorderColor: Colors.black,
                errorBorderColor: Colors.red,
                borderWidth: 2.0,
                borderRadius: BorderRadius.circular(12),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                cursorColor: Colors.green,
                textStyle: const TextStyle(fontSize: 18, color: Colors.black),
                onChanged: (value) {
                  print("Input changed: $value");
                },
                onSubmitted: (value) {
                  print("Submitted: $value");
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z ]*$'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
