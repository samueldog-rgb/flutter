import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vini_portifolio/pagamento.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaInicial());
  }
}
 
// Classe da tela inicial
 
  @override
class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PortGil",
          style: TextStyle(
            color: Color(0XFFDEC2DB),
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF5B62B4),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Cara um teste sobre isoo!"),
            Text("Abaixo terá uma foto minha não sei o pq"),
            Icon(Icons.arrow_downward),
           ClipRRect(
            borderRadius: BorderRadius.circular(1000), // Raio igual à metade da largura/altura
              child: Image.network(
                "https://wallpapers.com/images/hd/anime-meme-pfp-shiba-dog-naruto-akatsuki-qg4jwiz9wanor4vf.jpg",
                width: 300,
                height: 300,
                fit: BoxFit.cover, // Garante que a imagem preencha o círculo
              ),
            ),
            Container(child: Center(child: Column(
              children: [
                Text('''Caro leitor, receba estas linhas tortas,
                      Como chaves enferrujadas para velhas portas.
                      Não trago verdades, nem certezas absolutas,
                      Apenas ecos das minhas próprias lutas.
                      Sinta o peso do silêncio que a página esconde,
                      E a urgência da alma que sempre responde.
                      A poesia é o relâmpago, o sopro, a luz,
                      O fardo leve que a escrita me traduz.
                      Se o verso te tocar, ou te fizer pensar,
                      Terá valido a pena o ato de inventar.
                      Pois a magia não está no que escrevi,
                      Mas no espelho que formamos, tu e eu aqui.''')
              ],
            )))
          ]     
        ),
      ),
    );
  }
}