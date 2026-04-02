import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vini_portifolio/link.dart';
import 'package:vini_portifolio/projetos.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Projetos projetados",
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
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,

          
          children: [
            Text("Projeto flutter"),
            MyLink(
              url_imagem: "assets/gitin.png",
              nome_rede: "GitHub",
              link: "https://github.com/samueldog-rgb/flutter.git",
            ),
            
             Text("Projeto flutter"),
              Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                MyLink(
                  url_imagem: "assets/gitin.png",
                  nome_rede: "GitHub",
                  link: "https://github.com/samueldog-rgb/livraria_back.git",
                ),
                  
               

              ],
            ),
          ],
        ),
      ),
    );
  }
}
