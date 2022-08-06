import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  MyWidget({Key? key, required this.controllerform}) : super(key: key);
  var controllerform = TextEditingController();

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Digite seu CEP"),
      content: Column(children: [
        TextFormField(
          controller: widget.controllerform,
          keyboardType: TextInputType.phone,
          style: TextStyle(color: Colors.yellow, fontSize: 24),
          decoration: InputDecoration(
            hintText: "Insira seu CEP",
          ),
        )
      ]),
      actions: <Widget>[
        RaisedButton(
            child: Text("Enviar"),
            onPressed: () {
              print("valor no model: " + widget.controllerform.text);
              Navigator.of(context).pop();
            })
      ],
    );
    ;
  }
}
