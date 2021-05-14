import 'package:flutter/material.dart';

class FourthArguments {
  String name;
  int age;

  String stringfyAge() {
    if (age > 0) {
      return age.toString();
    } else {
      return "";
    }
  }

  FourthArguments({this.name = "", this.age = 0});
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quarta Página")),
      ),
      body: FourthBody(),
    );
  }
}

class FourthBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FourthArguments arguments = ModalRoute.of(context).settings.arguments;
    if (arguments == null) {
      arguments = FourthArguments();
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [Text(arguments.name), Text(arguments.stringfyAge())],
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pop(context);
            },
            child: Text("Voltar"),
          ),
          ElevatedButton(
            onPressed: () async {
              final response =
                  await Navigator.popUntil(context, ModalRoute.withName("/"));
            },
            child: Text("Home"),
          ),
        ],
      ),
    );
  }
}
