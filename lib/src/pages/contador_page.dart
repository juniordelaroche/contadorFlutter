import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilosDeTextos = TextStyle(
    fontSize: 32
  ); // valor para el tamanio de letra

  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de taps:',style: _estilosDeTextos),
              Text('$_conteo',style: _estilosDeTextos),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _conteo++;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}