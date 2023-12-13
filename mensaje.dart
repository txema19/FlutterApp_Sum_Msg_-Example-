import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const AppTxema());
}

class AppTxema extends StatelessWidget {
  const AppTxema({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mensaje',//TITULO DE LA PAGINA
      theme: ThemeData(),
      home: const Mensaje(),
      debugShowCheckedModeBanner: false,
      
      );
  }
}
class Mensaje extends StatefulWidget{
  const Mensaje({super.key});

  
  @override
  PrincipalState createState() => PrincipalState();
}
class PrincipalState extends State<Mensaje>{

  TextEditingController nombre = TextEditingController();
  String nom = '';
  bool mostrarMensaje = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold( //HOME es toda la pantalla
        appBar: AppBar( //AppBar es la parte de arriba con el menu
          title: const Text(
            "Calculos",
            style:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(59, 0, 8, 0.822),
        ),
        body: 
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 TextField(
                  controller: nombre,
                    decoration: const InputDecoration(
                      hintText: "Nombre:",
                      fillColor: Colors.white,
                      filled:true)
                      
                  ),
                const SizedBox(height: 10,),
                ElevatedButton(
                onPressed: () {
                  
                  setState(() { nom = nombre.text;});
                  mostrarMensaje=true;

                },style: ButtonStyle
                    (
                    fixedSize: MaterialStateProperty.all<Size>(const Size(450, 35.0),),
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(59, 0, 8, 0.822)),
                    textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20.0), // Cambia el tamaño de la fuente aquí
                    ),
                    ),
                child: const Text("Insertar"),
              ),
              const SizedBox(height: 10),
              if (mostrarMensaje)
                Text(
                  "Hola $nom, encantado de verte", 
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Home()),
                );
                },
                   style: ButtonStyle
                    (
                    fixedSize: MaterialStateProperty.all<Size>(const Size(450, 35.0),),
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(59, 0, 8, 0.822)),
                    textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20.0), // Cambia el tamaño de la fuente aquí
                    ),
                    ),
                  child: const Text("Atras"),)
                
              ],
            ),
          )
      )
    );
  }
}
