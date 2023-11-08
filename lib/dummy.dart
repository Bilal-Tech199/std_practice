import 'package:flutter/material.dart';
import 'package:std_practice/Utils/edit_text_field.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EditTextField(
            hintText: "Email",
            icon: Icons.email,
          ),
          SizedBox(height: 10),
          EditTextField(
            hintText: "Password",
            icon: Icons.lock,
          ),
        ],
      ),
    );
  }
}
