import 'package:flutter/material.dart';
import 'package:riegosystem/humedad.dart';
import 'package:riegosystem/inicio.dart';
import 'package:riegosystem/login_page.dart';
import 'package:riegosystem/pantallainicio.dart';
import 'package:riegosystem/riego.dart';
import 'package:riegosystem/temperatura.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiegoSystem',
      debugShowCheckedModeBanner: false,
      home: PantallaInicio(),
      initialRoute: PantallaInicio.id,
      routes: {
        PantallaInicio.id: (context) => PantallaInicio(),
        Login.id: (context) => Login(),
        Inicio.id: (context) => Inicio(),
        Temperatura.id: (context) => Temperatura(),
        Riego.id: (context) => Riego(),
        Humedad.id: (context) => Humedad(),
      },
    );
  }
}
