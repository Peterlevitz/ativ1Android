import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Atividade 1 - Prog Mobile"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.call)),
                Tab(icon: Icon(Icons.call)),
                Tab(icon: Icon(Icons.access_alarm))
              ],
            )),
        body: TabBarView(
          children: [
            Center(child: formatPictureLeonardo()),
            Center(child: Text("page 2")),
            Center(child: Text("page 3")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget formatPictureLeonardo() {
  return Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.deepPurple, width: 3)),
            child: Image.asset('assets/images/nemEuSei.jpg'),
          ),
          Text(
            "Olá! Meu nome é Leonardo Cavichia, mas a maioria aqui me chamam de Cavichia, meu RA é 220150 e eu estou no sexto semestre do curso de TADS, atualmente estou desempregado, mas a minha área de atuação primária ainda é desenvolvimento. Eu não sou muito fã de programar, gosto mais das outras áresa do processo de desenvolvimento. No meu tempo livre eu gosto de ler, escrever histórias, ouvir músicas e jogar. Não pratico nenhum esporte",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    ),
  );

  //
}
