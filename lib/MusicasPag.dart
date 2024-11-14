import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:url_launcher/url_launcher.dart';

class CMusica {
  String musica;
  String titulo;
  String imagem;

  CMusica(this.musica, this.titulo, this.imagem);
}

class MusicasPag extends StatelessWidget {
  MusicasPag({Key? key}) : super(key: key);

  final CImg imgNU = CImg('assets/img/NobuoD.png', '', 1); 
  final List<CMusica> musicas = [
    CMusica(
      'https://www.youtube.com/watch?v=nNms5rOaGlk',
      '"One Winged Angel"',
      'assets/img/NobuoOWA.png',
    ),
    CMusica(
      'https://www.youtube.com/watch?v=XX9AroX7x1o',
      '"Prelude"',
      'assets/img/NobuoPR.png',
    ),
    CMusica(
      'https://www.youtube.com/watch?v=HgXwuDyCTfk',
      '"Terra’s Theme"',
      'assets/img/NobuoTT.png',
    ),
  ];

  void _abrirMusica(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw "Não foi possível abrir o link: $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 183, 212, 220),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            title: const Text("Músicas"),
            centerTitle: true,
            backgroundColor: const Color(0x00000000),
            elevation: 0,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 243, 242),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              margin: const EdgeInsets.only(top: 16, bottom: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgNU.img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: musicas.length,
                itemBuilder: (context, index) {
                  final musica = musicas[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(musica.imagem),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 16), 
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                musica.titulo,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                              ElevatedButton(
                                onPressed: () => _abrirMusica(musica.musica),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 160, 212, 220),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Ouvir',
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}