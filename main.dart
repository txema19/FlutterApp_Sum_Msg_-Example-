import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculos.dart';
import 'package:flutter_application_1/mensaje.dart';

void main() {
  runApp(const AppTxema());
  
}
class AppTxema extends StatelessWidget {
  const AppTxema({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',//TITULO DE LA PAGINA
      theme: ThemeData(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
      
      );
  }
}
class Home extends StatefulWidget{
  const Home({super.key});

  
  @override
  PrincipalState createState() => PrincipalState();
}
class PrincipalState extends State<Home>{

  @override
  Widget build(BuildContext context) => MaterialApp(

    home:Scaffold( //HOME es toda la pantalla
      appBar: AppBar( //AppBar es la parte de arriba con el menu
        title: const Text(
          "Home",
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
              ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network("https://picsum.photos/id/237/450/480"),
            ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Calculos()),
                );
              },
                 style: ButtonStyle
                  (
                  fixedSize: MaterialStateProperty.all<Size>(const Size(450, 35.0),),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(59, 0, 8, 0.822)),
                  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20.0), // Cambia el tamaño de la fuente aquí
    ),
                  ),
                child: const Text("Calculos"),),
              const SizedBox(height: 5,),

               ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Mensaje()),
                );
              },
                 style: ButtonStyle
                 (
                  fixedSize: MaterialStateProperty.all<Size>(const Size(450, 35.0),),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(59, 0, 8, 0.822)),
                  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20.0)),
                  ),
                child: const Text("Mensaje")),
              const SizedBox(height: 10,),

            ],
          ),
        )
    )
  );
}
