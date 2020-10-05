import 'package:flutter/material.dart';

//arquivo criado para poder criar a tabBar em um ambiente limpo, sem os codigos ja feitos pelo dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Trab1",
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                  title: Text("Trabalho 1 - Desenvolvimento Mobile"),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.call)),
                      Tab(icon: Icon(Icons.call)),
                      Tab(icon: Icon(Icons.access_alarm))
                    ],
                  )),
              body: TabBarView(children: [
                Center(child: Text("page 1")),
                Center(child: Text("page 2")),
                Center(child: Text("page 3")),
              ])),
        ));
  }
}
