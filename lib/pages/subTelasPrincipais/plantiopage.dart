import 'package:AGROGRAM/pages/Classes/feijao.dart';
import 'package:AGROGRAM/pages/Classes/milhopage.dart';
import 'package:AGROGRAM/pages/Classes/soja.dart';
import 'package:AGROGRAM/pages/Classes/trigo.dart';
import 'package:flutter/material.dart';


class Plantio extends StatefulWidget{
  @override
  _Plantio createState() =>_Plantio ();
}


class _Plantio extends State<Plantio>{
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
                child: const Text('PLANTAR'),
                  onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Milho(),                         
                        ),
                      );
                    },
              
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
                child: const Text('PLANTAR'),
                onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Trigo(),
                          
                        ),
                      );
                    },
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
                child: const Text('PLANTAR'),
                onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Soja(),
                          
                        ),
                      );
                    },
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
                child: const Text('PLANTAR'),
               onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Feijao(),                          
                        ),
                      );
                    },
              ),
              const SizedBox(width: 8),
              
            ],
          ),
          
        ],
        
      ),
    ),
  );
}

}