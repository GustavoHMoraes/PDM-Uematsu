import 'package:flutter/material.dart';
import 'package:flutter_app/MusicasPag.dart';
import 'package:flutter_app/ArtistaPag.dart';
import 'package:flutter_app/TrabalhosPag.dart';

class CDesc1 {
  String texto;
  String fonte;
  int tamanho;
  int cor;
  String titulo;
  int posicao;
  String subtitulo;

  CDesc1(this.texto, this.fonte, this.titulo, this.subtitulo,
      this.tamanho, this.cor, this.posicao);
}

class CImg {
  String img;
  int posicao;
  String legenda;

  CImg(this.img, this.legenda, this.posicao);
}
void main() {
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
  final CDesc1 desc1 = CDesc1(
    '   Nobuo Uematsu,  nascido em 21 de março de 1959, é um dos compositores mais renomados da indústria dos videogames.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
    final CDesc1 desc2 = CDesc1(
    '   Uematsu desde cedo mostrou interesse pela música, inicialmente se inspirando em artistas ocidentais, como Elton John, para explorar sua paixão musical. Embora tenha começado a tocar piano ainda jovem, ele é, na maioria, um autodidata, o que demonstra seu talento natural e dedicação à arte.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
    final CDesc1 desc3 = CDesc1(
    '   Em 1985, ele começou a trabalhar na Square (atual Square Enix), uma empresa de videogames onde sua carreira como compositor de trilhas sonoras floresceu.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
  final CDesc1 desc4 = CDesc1(
    '  Ele se tornou amplamente conhecido por sua habilidade em combinar melodias épicas e emocionantes com narrativas profundas e envolventes dos jogos. Suas composições têm um alcance emocional único, misturando influências clássicas, rock e eletrônicas. Entre seus principais feitos, Uematsu é reconhecido por transformar a música de jogos em algo que transcende o ambiente digital, sendo muitas vezes tocada em grandes concertos ao redor do mundo. Sua música, apreciada tanto por fãs de jogos quanto por apreciadores de música em geral, desempenhou um papel crucial em elevar a música de videogames ao status de arte. ',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
  final CDesc1 desc5 = CDesc1(
    '   Além de seu trabalho com jogos, ele também formou sua própria banda, The Black Mages, onde explorou versões mais pesadas e eletrificadas de suas composições.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
  final CDesc1 desc6 = CDesc1(
    '   Mais tarde, ele fundou o estúdio Smile Please, onde continuou a trabalhar em projetos pessoais e musicais. Nobuo Uematsu é frequentemente descrito como uma lenda viva da música, e seu impacto continua a influenciar a forma como a música de videogames é percebida e apreciada mundialmente. Seu trabalho tem sido elogiado não apenas por sua habilidade técnica, mas também por seu profundo senso de narrativa emocional, tornando-o um dos mais respeitados compositores contemporâneos.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );

 final CImg img1 = CImg('assets/img/Nobuo1.jpg', '', 1); 
 final CImg img2 = CImg('assets/img/Nobuo2.jpeg', '', 1); 
 final CImg img3 = CImg('assets/img/Nobuo3.jpg', '', 1);


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
                    MaterialPageRoute(builder: (context) => ArtistaPag()),
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
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(img1.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  desc1.texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: desc1.fonte,
                    fontSize: desc1.tamanho.toDouble(),
                    color: Color(desc1.cor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            desc2.texto,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: desc2.fonte,
              fontSize: desc2.tamanho.toDouble(),
              color: Color(desc2.cor),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  desc3.texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: desc3.fonte,
                    fontSize: desc3.tamanho.toDouble(),
                    color: Color(desc3.cor),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(img2.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            desc4.texto,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: desc4.fonte,
              fontSize: desc4.tamanho.toDouble(),
              color: Color(desc4.cor),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(img3.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  desc5.texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: desc5.fonte,
                    fontSize: desc5.tamanho.toDouble(),
                    color: Color(desc5.cor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            desc6.texto,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: desc6.fonte,
              fontSize: desc6.tamanho.toDouble(),
              color: Color(desc6.cor),
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