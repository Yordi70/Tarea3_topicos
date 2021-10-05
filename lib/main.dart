import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Suma(),
    );
  }
}

class Suma extends StatelessWidget {
  String numero_1 = "";
  String numero_2 = "";
  String sumar(String num1, String num2) {
    int nume1 = int.parse(num1);
    int nume2 = int.parse(num2);
    return (nume1 + nume2).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea3'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Numero1',
                  ),
                  onChanged: (numero1) {
                    numero_1 = numero1;
                  },
                  keyboardType:
                      TextInputType.number, //Mostrara teclado numérico
                ),
              ),
              Divider(),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Numero2',
                  ),
                  onChanged: (numero2) {
                    numero_2 = numero2;
                  },
                  keyboardType:
                      TextInputType.number, //Mostrara teclado numérico
                ),
              ),
              Divider(),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Resultado'),
                            content: Text(sumar(numero_1, numero_2)),
                          ));
                },
                color: Colors.green,
                child: Text('Sumar', style: TextStyle(color: Colors.white)),
              ),
            ],
          )),
    );
  }
}
