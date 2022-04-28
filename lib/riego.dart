import 'package:flutter/material.dart';

class Riego extends StatefulWidget {
  static String id = 'riego';

  @override
  State<Riego> createState() => _RiegoState();
}

class _RiegoState extends State<Riego> {
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
              Text('Registro Riego', style: TextStyle(fontSize: 40)),
              DataTable(
                columnSpacing: (20),
                columns: [
                  DataColumn(label: Text('Fecha')),
                  DataColumn(label: Text('Hora Inicio')),
                  DataColumn(label: Text('Hora Final')),
                  DataColumn(label: Text('Duracion')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('11:30')),
                      DataCell(Text('11:35')),
                      DataCell(Text('5 min')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('12:30')),
                      DataCell(Text('12:36')),
                      DataCell(Text('6 min')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('22/04/2022')),
                      DataCell(Text('13:30')),
                      DataCell(Text('13:34')),
                      DataCell(Text('4 min')),
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
                'https://cdn-icons-png.flaticon.com/512/889/889758.png?w=360'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Estado actual Riego')),
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
