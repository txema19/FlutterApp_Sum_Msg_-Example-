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
      title: 'Calculos',//TITULO DE LA PAGINA
      theme: ThemeData(),
      home: const Calculos(),
      debugShowCheckedModeBanner: false,
      
      );
  }
}
class Calculos extends StatefulWidget{
  const Calculos({super.key});

  
  @override
  PrincipalState createState() => PrincipalState();
}
class PrincipalState extends State<Calculos>{
  
  TextEditingController numero1 = TextEditingController();
  TextEditingController numero2 = TextEditingController();
  int resultado = 0;
  
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
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network("https://picsum.photos/450/300?grayscale"),
              ),
                const SizedBox(height: 30,),

                 TextField(
                  controller: numero1,
                    decoration: const InputDecoration(
                      hintText: "Número 1",
                      fillColor: Colors.white,
                      filled:true)
                  ),
                  TextField(
                    controller: numero2,
                    decoration: const InputDecoration(
                      hintText: "Número 2",
                      fillColor: Colors.white,
                      filled:true)
                  ),
                const SizedBox(height: 10,),
                ElevatedButton(
                onPressed: () {
                  int num1 = int.tryParse(numero1.text) ?? 0;
                  int num2 = int.tryParse(numero2.text) ?? 0;
                  int suma = num1 + num2;
                  setState(() { resultado = suma;});
                },style: ButtonStyle
                    (
                    fixedSize: MaterialStateProperty.all<Size>(const Size(450, 35.0),),
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(59, 0, 8, 0.822)),
                    textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20.0), // Cambia el tamaño de la fuente aquí
                    ),
                    ),
                child: const Text("SUMAR"),
              ),
              const SizedBox(height: 10),
              Text(
                "Resultado: $resultado", 
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
