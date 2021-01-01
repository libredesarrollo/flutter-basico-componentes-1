import 'package:flutter/material.dart';

import 'package:componente_vsc_01/helpers/dialogs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          //backgroundColor: Color.fromRGBO(16, 8, 77, 1),
          title: Text("Bienvendio a Flutter!"),
        ),
        body: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.0),
                  boxShadow: [BoxShadow(blurRadius: 1.0, offset: Offset(1, 1))],
                  border: Border.all(
                    color: Colors.grey[900],
                  )),
              child: Column(
                children: <Widget>[
                  Text(
                    "Bienvendio a mi App",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/frid.jpg',
                      height: 200,
                    ),
                  ),
                  //Image.asset('assets/bird.jpg', height: 200,),
                  //Image.network("https://images.freeimages.com/images/large-previews/9f9/selfridges-2-1470748.jpg",height: 200,),
                  Text(
                    "Esta es la app de componentes del curso :)",
                    style: TextStyle(
                        color: Colors.indigo[300],
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 250),
                    child: RaisedButton(
                        onPressed: () => contacto(context),
                        child: Text("Contacto")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  contacto(BuildContext context) {
    //infoDialog(context, "¡Contacto!", "Aquí puedes contactarme");
    infoDialog(
        context: context,
        content: "Aquí puedes contactarme",
        title: "¡Contacto!");
  }
}
