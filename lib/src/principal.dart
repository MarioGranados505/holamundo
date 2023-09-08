import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _valor = 0;

  void incrementar(){
    setState(() {
        _valor++;
    });
  }

  void decrementar(){
    setState(() {
        _valor--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App en flutter"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
            Text('Era voy'),
            Text('$_valor')
          ],
        ),
        
      ),
      floatingActionButton: 
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FloatingActionButton(
            onPressed: incrementar,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: decrementar,
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ]),

      
      
    );
      
  }
}