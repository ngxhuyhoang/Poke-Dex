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
                title: Text("Item - $index"),
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
          children: List.generate(100, (index) {
            return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(child: Text("Hello")));
          }),
        ),
      ),
    );
  }
}
