import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLink extends StatelessWidget {
  String url_imagem;
  String nome_rede;
  String link;
  MyLink({super.key, required this. url_imagem, required this.nome_rede , required this.link});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child:Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children:[
            Image.network(url_imagem, width: 100, height: 100),
            Text(nome_rede),
          ]
        )
      ),

      onTap: ()async {
        
        Uri url_convertido = Uri.parse(link);

        if(await canLaunchUrl(url_convertido)){
          await launchUrl(url_convertido);
        }
 
      },
    );
  }
}