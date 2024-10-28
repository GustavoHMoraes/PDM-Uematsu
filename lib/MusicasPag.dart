import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/ArtistaPag.dart';
import 'package:flutter_app/TrabalhosPag.dart';
class CDescricao {
  String texto;
  String fonte;
  int tamanho;
  int cor;
  String titulo;
  int posicao;
  String subtitulo;

  CDescricao(this.texto, this.fonte, this.titulo, this.subtitulo,
      this.tamanho, this.cor, this.posicao);
}

class CImg {
  String img;
  int posicao;
  String legenda;

  CImg(this.img, this.legenda, this.posicao);
}

class MusicasPag extends StatelessWidget {
  const MusicasPag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Nobuo Uematsu',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color.fromARGB(255, 241, 243, 242),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffffffff)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}