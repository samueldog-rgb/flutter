
import 'package:flutter/material.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Tipos de pagamento",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 40)),
    backgroundColor: Color.fromARGB(255, 152, 150, 248),   
    centerTitle: true
    ),
    body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      // children: [Text("Modos de pagamento"),
      // TextButton(onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder:(context) => Pix()));
      // }, child: Text("Pix")),
      // TextButton(onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Cartao()));

      // }, child: Text("Cartão")),
      // TextButton(onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Boleto()));
      // }, child: Text("Boleto"))
      
      
    )),
    );
  }
}

