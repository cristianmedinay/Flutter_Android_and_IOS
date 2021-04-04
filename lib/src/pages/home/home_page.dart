import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:simp_sa/src/pages/home/home_controller.dart';


class HomePage extends StatelessWidget {


  HomeController _con = new HomeController();



  @override
  Widget build(BuildContext context) {


    _con.init(context);//inicializa el controllador

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors:[Colors.white70,Colors.white70,Colors.blueGrey],
            ),
          ),
          child: Column(
            children:[
              _fondoDecoration(context),
              SizedBox(height: 100),
              Text("Hola ... Como estas ?  ",
                style: TextStyle(
                  fontFamily:'Pacifico',
                  fontSize:20,

                ),
              ),
              SizedBox(height: 100),
              //CONTENEDOR ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _imageTypeUser(context,'assets/img/pasajero.png'),
                  //separa
                  SizedBox(height: 30),
                  _imageTypeUser(context,'assets/img/driver.png'),
                ],
              ),
              //CONTENEDOR ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 100),
                  _textTypeUser("Cliente"),
                  SizedBox(height: 30),
                  SizedBox(height: 100),
                  _textTypeUser("Conductor"),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget _fondoDecoration(BuildContext context){
    return
      ClipPath(
        clipper: OvalBottomBorderClipper(),
        child:  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors:[Colors.lightBlue,Colors.white70],
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/img/logo_app.png",
                width:150,
                height:100,

              ),
              Text('Facil y rapido')
            ],
          ),
        ),
      );
  }


  Widget _imageTypeUser(BuildContext context,String imagen){
    //gesture detecta el click cuando haga en las imagenes
    return  GestureDetector(
      //llamamos al metodo que nos lleva a la pagina
      onTap:_con.paginaLogin,
      child: CircleAvatar(
        backgroundImage: AssetImage(imagen),
        radius: 60,
      ),
    );
  }

 Widget _textTypeUser(String typeUser){
  return Text(
    typeUser,
    style: TextStyle(
      fontSize: 20,
    ),
    );
  }



}
