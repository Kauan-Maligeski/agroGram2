import 'package:flutter/material.dart';

class Orcamento extends StatefulWidget{
  @override
  _Orcamento createState() =>_Orcamento ();
}

class _Orcamento extends State<Orcamento> {
  @override
  Widget build(BuildContext context) {
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            
            leading: Icon(Icons.grain),
            title: Text('Milho'),
            subtitle: Text('O tempo de sua permanência no campo até o momento da colheita é de aproximadamente 90 dias no verão e de 100 dias no inverno.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.grain),
            title: Text('Trigo'),
            subtitle: Text('Após 110 a 120 dias do plantio a colheita já pode ser.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.grain),
            title: Text('Soja'),
            subtitle: Text('O tempo de sua permanência no campo até o momento da colheita é de aproximadamente 90 dias no verão e de 100 dias no inverno.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.grain),
            title: Text('Feijão'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
            ],
          ),
          
        ],
        
      ),
    ),
  );
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}