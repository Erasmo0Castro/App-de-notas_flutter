import 'package:app_notas/pages/guardar_page.dart';
import 'package:app_notas/pages/list_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp (
    debugShowCheckedModeBanner: false,
   
      initialRoute: ListPage.ROUTE,
      routes:{
        ListPage.ROUTE : (_) => ListPage(),
        GuardarPage.ROUTE : (_) => GuardarPage()
      },


    );
  }

}