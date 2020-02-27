import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estilosDeTextos = TextStyle(
    fontSize: 32
  ); // valor para el tamanio de letra

  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks:',style: estilosDeTextos),
              Text('$conteo',style: estilosDeTextos),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola mundo!');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}
