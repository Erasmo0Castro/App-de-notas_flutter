import 'package:flutter/material.dart';

class GuardarPage extends StatelessWidget {

  static const String ROUTE = "/guardar";


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Guardar"),
      ),
    body: Container(
      child: _FormGuardar(),
      ),
    );
  }
}

class _FormGuardar extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(child: Column(children: <Widget> [
        TextFormField(
          validator: (value){
            if(value!.isEmpty){
              return "Tiene que escribir algo";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Titulo de la nota",
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 25,),
        
        TextFormField(
          maxLines: 8,
          maxLength: 500,
          validator: (value){
            if(value!.isEmpty){
              return "Tiene que escribir algo";
            }
            return null;
          },
          decoration: InputDecoration(
              labelText: "Contenido",
              border: 
                OutlineInputBorder()
          ),
        ),

        ElevatedButton(child: Text("Guardar"), onPressed: (){
          //print("guardar"),
      },)
    ],
      
      
      
      ),),
    );
    
  }


}