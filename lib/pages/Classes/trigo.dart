

import 'package:AGROGRAM/pages/Classes/widgetsTrigo/logotrigo.dart';
import 'package:AGROGRAM/pages/Classes/widgetsTrigo/submitTrigo.dart';
import 'package:AGROGRAM/pages/Classes/widgetsTrigo/sucessTrigo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Trigo extends StatefulWidget {
  @override
  _TrigoState createState() => _TrigoState();
}

class _TrigoState extends State<Trigo> {
  var _areaCtrl = new MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "";

  @override
  Widget build(BuildContext context) {
    

    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false), 
          ),
        title: Text("Voltar para o menu "),
      ),
      body: ListView(   
        children: <Widget>[
          Logo(),
          _completed ? SucessTrigo(
            reset: reset,
            result: _resultText,
            )
          :SubmitTrigo(
          areaCtrl: _areaCtrl , 
          busy: _busy, 
          sumbmitMillho: calculate,
          ),

          SizedBox(
            height: 30,
          ),
          
        ],
      ),
    );
  }

  Future calculate(){
    double semente = 4.4;
    double veneno = 0.045;
    double adubo = 0.040;
    double area = double.parse(_areaCtrl.text.replaceAll(new RegExp(r'[,.]'),''),
    )/
    100;
    double resultQtdVeneno = area * veneno;
    double resultQtdSemente = area * semente;
    double resultQtdAdubo = area * adubo;

      setState(() {
        _completed = false;
        _busy = true;
      });

    return new Future.delayed(const Duration(seconds:3),() =>{
      setState(() {
        if(area >= 1){
        _resultText ="Quantidade de sacos de sementes/metro²: $resultQtdSemente"+
        "\nQuantide de adubo/kg: $resultQtdAdubo Kg" + 
        "\nQuantidade de veneno/litros: $resultQtdVeneno L";
      

      _busy = false;
      _completed = true;
        }else{
          reset();
        }
    })
    });  
      
  }

  reset(){
    setState(() {
      _areaCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false; 
    });
  }
}