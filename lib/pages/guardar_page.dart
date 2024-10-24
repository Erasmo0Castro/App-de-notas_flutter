import 'package:flutter/material.dart';

class GuardarPage extends StatelessWidget {

  static const String ROUTE = "/guardar";


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Guardar"),
      ),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
               Color.fromARGB(255, 253, 254, 255),
               Color.fromARGB(255, 240, 248, 255),
               Color.fromARGB(255, 221, 229, 238),
              Color.fromARGB(255, 226, 230, 247),
                Color.fromARGB(255, 127, 135, 218), 
                 Color.fromARGB(255, 113, 123, 235),  // Color azul
              Color(0xFF1976D2), // Color azul más oscuro
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          
      ),
      child: _FormGuardar(),
      ),
    );
  }
}

class _FormGuardar extends StatelessWidget{

final _formKey = GlobalKey<FormState>();
final titleController = TextEditingController();
final contentController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: titleController,
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
          controller: contentController,
          maxLines: 8,
          maxLength: 500,
          validator: (value){
            if(value == null || value.isEmpty){
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

        ElevatedButton(
          child: Text("Guardar"), 
          onPressed: (){
            if(_formKey.currentState?.validate() ?? false){
              print("Valido: " +titleController.text );
              }
            },
          ),
        ],
      ),
    ),
    );
    
  }


}