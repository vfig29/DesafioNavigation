import 'package:desafionavi/fourth/fourth_screen.dart';
import 'package:desafionavi/third/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Segunda Pagina")),
      ),
      body: SecondBody(),
    );
  }
}

class SecondBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pushNamed(context, "third",
                  arguments: ThirdArguments(sendedColor: Colors.blue));
            },
            child: Text("Terceira Pagina"),
          ),
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pushNamed(context, "fourth",
                  arguments: FourthArguments(name: "João Dezenove", age: 19));
            },
            child: Text("Quarta Pagina"),
          ),
        ],
      ),
    );
  }
}
