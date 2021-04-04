import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {

  Color color;
  String text;
  Function onPressed;

  //constructor pero de forma mas reducida
  ButtonApp(Color color, String  text,Function onPressed){
    this.color = color;
    this.text=text;
    this.onPressed=onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed:(){
        //funcion que paso por el constructor de iniciar sesion
        onPressed();
      },
      color: color,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(text),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
    );

  }



}
