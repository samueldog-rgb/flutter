import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vini_portifolio/link.dart';
import 'package:vini_portifolio/projetos.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Cara um teste sobre isoo!"),
            Text("Abaixo terá uma foto minha não sei o pq"),
            Icon(Icons.arrow_downward),

            ClipRRect(
              borderRadius: BorderRadius.circular(
                1000,
              ), // Raio igual à metade da largura/altura
              child: Image.asset(
                "assets/Gemini_Generated_Image_80s4ew80s4ew80s4.png",
                width: 300,
                height: 300,

                fit: BoxFit.cover, // Garante que a imagem preencha o círculo
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(30.0),

              child: Text(
                "Caro leitor, receba estas linhas portas,  Não trago verdades, nem certezas absolutas,  Apenas ecos das minhas próprias lutas.   Sinta o peso do silêncio que a página esconde,  E a urgência da alma que sempre responde. A poesia é o relâmpago, o sopro, a luz,   O fardo leve que a escrita me traduz. Se o verso te tocar, ou te fizer pensar,  Terá valido a pena o ato de inventar.  Pois a magia não está no que escrevi, Mas no espelho que formamos, tu e eu aqui.",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLink(
                  url_imagem: "assets/lin.png",
                  nome_rede: "Linkedin",
                  link: "https://www.linkedin.com",
                ),
                MyLink(
                  url_imagem: "assets/gitin.png",
                  nome_rede: "GitHub",
                  link: "https://github.com/Samueldog-rgb",
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Projetos()),
                );
              },
              child: Text("Meus projetos"),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
