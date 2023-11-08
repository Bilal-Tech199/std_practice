import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  int index=0;
 double sliderValue=1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home View",
            style: TextStyle(
              fontSize: 20,
            )),
      ),
      body: Column(
        children: [
          Slider(
            value: sliderValue,
            min: 1,
            max: 40,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            label: "${sliderValue}",
            onChanged: (value) {
              setState(() {
                sliderValue=value;
              });
            },
          ),
          Text("${sliderValue.ceil()}")
        ],
      ),
      // body: [
      //   Center(child: Text("1"),),
      //   Center(child: Text("2"),),
      //   Center(child: Text("3"),),
      // ].elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: index,
        onTap: (value) {
          setState(() {
            index=value;

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        ],
      ),
    );
  }
}
