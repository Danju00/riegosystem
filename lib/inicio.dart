import 'package:flutter/material.dart';
import 'package:riegosystem/humedad.dart';
import 'package:riegosystem/riego.dart';
import 'package:riegosystem/temperatura.dart';

class Inicio extends StatelessWidget {
  static String id = 'inicio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 165, 144),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 72, 165, 144),
        centerTitle: true,
        title: Text('RiegoSystem'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        children: <Widget>[
          _cardTipoDo(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo3(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  'Riego',
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Registro del dia del Riego',
                  textAlign: TextAlign.center,
                )),
            FlatButton(
              child: Text('Ir>>'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Riego()));
              },
            )
          ],
        ),
      );
    });
  }

  _cardTipo2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  'Temperatura',
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Registro de temperatura',
                  textAlign: TextAlign.center,
                )),
            FlatButton(
              child: Text('Ir>>'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Temperatura()));
              },
            )
          ],
        ),
      );
    });
  }

  _cardTipo3() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  'Humedad',
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Registro de humedad',
                  textAlign: TextAlign.center,
                )),
            FlatButton(
              child: Text('Ir>>'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Humedad()));
              },
            ),
          ],
        ),
      );
    });
  }

  Widget _cardTipoDo() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://1000marcas.net/wp-content/uploads/2021/08/Latex-Degree-Symbol.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Temperatura actual')),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        //color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
