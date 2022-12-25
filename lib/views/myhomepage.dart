// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Italo Rodrigo"),
              accountEmail: Text("italo.computation@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("IR"),
              ),
            ),
            ListTile(
              title: Text("Teste 1"),
              subtitle: Text("testando"),
            ),
            ListTile(
              title: Text("Teste 2"),
              subtitle: Text("testando"),
            ),
            ListTile(
              title: Text("Teste 3r"),
              subtitle: Text("testando"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'clique para adicionar:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text('resultado: $_counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
