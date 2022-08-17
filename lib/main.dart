import 'package:flutter/material.dart';

void main() => runApp( App() );

class App extends StatelessWidget { App ({ super.key});

  var temperatura = 0;

  aumentartemperatura(){
    return temperatura + 1;
  }
  diminuirtemperatura(){
    return temperatura - 1;
  }
  alterartemperatura(){
    print('Alterou a temperatura');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(
                key: key,
                child: const Text("Seja bem vindo")
              )
          ),
          body: Center(
            child: Column(
              children: [
                const Text(
                 'Controle de temperatura',
                  style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  key: key,
                  margin: const EdgeInsetsDirectional.only(top: 20),
                  child: const Icon(Icons.ac_unit, size: 40, color: Colors.blue)
                ),
                Container(
                  key: key,
                  margin: const EdgeInsetsDirectional.only(top: 30),
                  child: Text(temperatura.toString(), style: const TextStyle(fontSize: 40, color: Colors.indigo, fontWeight: FontWeight.bold))
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        key: key,
                        margin: const EdgeInsetsDirectional.only(top: 20),
                        child: TextButton(onPressed: diminuirtemperatura, child: const Text('-', style: TextStyle(fontSize: 50, color: Colors.red)))
                      )
                    ),
                    Expanded(
                      child: Container(
                        key: key,
                        margin: const EdgeInsetsDirectional.only(top: 20),
                        child: TextButton(onPressed: aumentartemperatura, child: const Text('+', style: TextStyle(fontSize: 50, color: Colors.blue),))
                      )
                    )
                  ],
                ),
                TextButton(onPressed: alterartemperatura, child: const Text('Alterar temperatura'))
              ],
            )
          )
      )
    );
  }

}