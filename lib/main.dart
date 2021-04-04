import 'package:flutter/material.dart';
import 'package:simp_sa/src/pages/home/home_page.dart';
import 'package:simp_sa/src/pages/login/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  async{

  //conectando con firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SIMP",
      initialRoute: "home",
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      routes: {
        "home":(BuildContext context)=> HomePage(),
        "login":(BuildContext context)=> LoginPage(),
      },
    );
  }
}


