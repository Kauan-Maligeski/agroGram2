import 'package:AGROGRAM/pages/Classes/widgetsTrigo/loadingTrigo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widgets.trigo.dart';
import 'loadingTrigo.dart';

class SubmitTrigo extends StatelessWidget {
  var areaCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function sumbmitMillho;

  SubmitTrigo({
    @required this.areaCtrl,
    @required this.busy,
    @required this.sumbmitMillho,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child:Input(
            ctrl: areaCtrl,
            label: "Área:",
          ),
        ),

        SizedBox(
          height: 25,
        ),

        LoadingTrigo(
            func: sumbmitMillho,
            text: "CALCULAR",
            busy: busy,
            ),
      ],
    );
  }
}