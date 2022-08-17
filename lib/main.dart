import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de temperatura',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Controle de temperatura')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get key => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              key: key,
              child: Text(widget.title)
          )
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  key: key,
                  margin: const EdgeInsetsDirectional.only(bottom: 40),
                  child: const Icon(Icons.ac_unit, size: 80, color: Colors.blue)
              ),
              const Text(
                'Temperatura',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  )
              ),
              Container(
                  key: key,
                  margin: const EdgeInsetsDirectional.only(top: 30),
                  child: Text('$_counter', style: const TextStyle(fontSize: 40, color: Colors.indigo, fontWeight: FontWeight.bold))
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          key: key,
                          margin: const EdgeInsetsDirectional.only(top: 20),
                          child: TextButton(onPressed: _decrementCounter, child: const Text('-', style: TextStyle(fontSize: 50, color: Colors.red)))
                      )
                  ),
                  Expanded(
                      child: Container(
                          key: key,
                          margin: const EdgeInsetsDirectional.only(top: 20),
                          child: TextButton(onPressed: _incrementCounter, child: const Text('+', style: TextStyle(fontSize: 50, color: Colors.blue),))
                      )
                  )
                ],
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 40),
                child: TextButton(onPressed: (){print('Alterou a temperatura');}, child: const Text('Alterar')),
              )
            ],
          )
        )
      );
  }

}