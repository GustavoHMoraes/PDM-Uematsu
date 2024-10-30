import 'package:flutter/material.dart';
import 'package:flutter_app/MusicasPag.dart';
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
}void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "App",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CDescricao descricao = CDescricao(
    '   Nobuo Uematsu,  nascido em 21 de março de 1959, é um dos compositores mais renomados da indústria dos videogames.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );

  final CImg img = CImg('img/.png', '', 1);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 183, 212, 220),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ArtistaPag()),
                  );
                },
                icon: const Icon(Icons.person,
                    color: Color(0xffffffff), size: 30.0),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrabalhosPag()),
                  );
                },
                icon: const Icon(Icons.work,
                    color: Color(0xffffffff), size: 30.0),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MusicasPag()),
                  );
                },
                icon: const Icon(Icons.audiotrack,
                    color: Color(0xffffffff), size: 30.0),
              ),
            ],
          ),
          backgroundColor: Color(0x00000000),
          elevation: 0,
          centerTitle: true,
        ),
      ),
    ),
    body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 160, 212, 220),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  descricao.texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: descricao.fonte,
                    fontSize: descricao.tamanho.toDouble(),
                    color: Color(descricao.cor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}