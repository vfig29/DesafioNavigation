import 'package:flutter/material.dart';

class ThirdArguments {
  Color screenColor = Colors.black;

  ThirdArguments({Color sendedColor = Colors.black}) {
    screenColor = sendedColor;
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThirdArguments receivedData = ModalRoute.of(context).settings.arguments;
    if (receivedData == null) {
      receivedData = ThirdArguments();
    }

    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Terceira Página"))),
      backgroundColor: receivedData.screenColor,
      body: ThirdBody(),
    );
  }
}

class ThirdBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final response =
                  await Navigator.popAndPushNamed(context, "fourth");
            },
            child: Text("Quarta Pagina"),
          ),
          ElevatedButton(
            onPressed: () async {
              final response = await Navigator.pop(context);
            },
            child: Text("Voltar"),
          ),
        ],
      ),
    );
  }
}
