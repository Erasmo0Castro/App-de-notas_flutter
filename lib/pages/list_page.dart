import 'package:app_notas/pages/guardar_page.dart';
import 'package:flutter/material.dart';


class ListPage extends StatelessWidget{

  static const String ROUTE = "/";


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed:() {
        Navigator.pushNamed(context, GuardarPage.ROUTE);
      }, ),
      appBar: AppBar(
        title: Text("Listado"),
        ) ,
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              ),
            ListTile(
              title: Text("Nota 1"),
              )
            

      ],)),

    );
  }




}