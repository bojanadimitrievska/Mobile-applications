import 'package:flutter/material.dart';

import './student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Organizacija na termini za ispiti i kolokviumi',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(
        title: 'Lista na predmeti',
        elements: [
          "Bazi na podatoci",
          "Inteligentni sistemi",
          "Algoritmi",
          "Kompjuterska etika",
          "Kompjuterska Grafika",
          "Mobilni sistemi",
          "Etichko hakiranje",
          "Informaciski tehnologii",
          "Veshtachka inteligencija",
          "Verojatnost i statistika",
          "Operativni sistemi",
          "Kalkulus",
          "Elektrichni kola",
          "Veb dizajn"
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> elements;
  const MyHomePage({@required this.title, @required this.elements});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () => print("AppBarButton Tapped"),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("Floating Action Tapped"),
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (contx, index) {
          print(elements[index]);
          return Card(
            elevation: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text("08.02"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text("12:30"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(contx).primaryColorDark,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    elements[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(contx).primaryColorLight,
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print("$index");
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
