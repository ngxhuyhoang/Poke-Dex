import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item - ${index + 1}"),
                );
              }),
        ),
        appBar: AppBar(
          title: Text("Pokedex"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(100, (index) => Card(index)),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final int index;

  Card(this.index);

  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
        child: RaisedButton(
            onPressed: () {},
            color: Colors.white,
            child: Center(child: Text("Hello - ${index + 1}"))));
  }
}
