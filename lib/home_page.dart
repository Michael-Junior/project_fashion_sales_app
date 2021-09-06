import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CardVitrine(),
                CardVitrine(),
              ],
            ),
          ),
          // Text(
          //   'You have pushed the button this many times:',
          // ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
        ],
      ),
    );
  }
}

class CardVitrine extends StatefulWidget {
  const CardVitrine({Key? key}) : super(key: key);

  @override
  _CardVitrineState createState() => _CardVitrineState();
}

class _CardVitrineState extends State<CardVitrine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      height: 200,
      width: 150,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.lightBlue,
          ),
          Text('Bolsa Blue'),
          Text('R\$ 3500'),
        ],
      ),
    );
  }
}
