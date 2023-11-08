import 'package:flutter/material.dart';

class TabBarViews extends StatelessWidget {
  const TabBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                // padding: EdgeInsets.all(10),
                // indicator: BoxDecoration(
                //   color: Colors.blue,
                //   borderRadius: BorderRadius.circular(10)
                // ),
                tabs: [
                  Tab(text: "Home"),
                  Tab(text: "Home"),
                  Tab(text: "Home"),
                  Tab(text: "Home"),
                  Tab(text: "Home"),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Center(child: Text("0")),
                  Center(child: Text("1")),
                  Center(child: Text("2")),
                  Center(child: Text("3")),
                  Center(child: Text("4")),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
