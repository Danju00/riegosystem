import 'package:flutter/material.dart';
import 'package:riegosystem/login_page.dart';

class PantallaInicio extends StatelessWidget {
  static String id = 'pantallainicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 165, 144),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Container(
                padding:
                    EdgeInsets.only(right: 5, left: 5, top: 50, bottom: 50),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 100, 133, 86),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(200))),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Gotas de tecnología",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          letterSpacing: 5),
                    ),
                  ),
                ),
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/riego.png',
                    width: 500,
                    height: 300,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                RaisedButton(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(13.0),
                  color: Color.fromARGB(255, 100, 133, 86),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
