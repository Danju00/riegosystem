import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget {
  static String id = 'riego';

  @override
  State<Temperatura> createState() => _TemperaturaState();
}

class _TemperaturaState extends State<Temperatura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 165, 144),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 72, 165, 144),
        centerTitle: true,
        title: Text('RiegoSystem'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _cardTipoDo(),
              SizedBox(
                height: 30.0,
              ),
              Text('Registro Temperatura', style: TextStyle(fontSize: 40)),
              DataTable(
                columns: [
                  DataColumn(label: Text('Fecha')),
                  DataColumn(label: Text('Hora')),
                  DataColumn(label: Text('Temperatura')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('11:30')),
                      DataCell(Text('20')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('12:30')),
                      DataCell(Text('21')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('13:30')),
                      DataCell(Text('20')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text('Temperatura')),
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
