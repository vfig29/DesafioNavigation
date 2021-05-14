import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Homepage")),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pushNamed(context, "second");
            },
            child: Text("Segunda Pagina"),
          ),
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pushNamed(context, "third");
            },
            child: Text("Terceira Pagina"),
          ),
        ],
      ),
    );
  }
}
