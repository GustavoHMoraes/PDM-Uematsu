import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/main.dart';

class CLink {
  String titulo;
  String url;

  CLink(this.titulo, this.url);
}

class ArtistaPag extends StatelessWidget {
  ArtistaPag({Key? key}) : super(key: key);

  final List<CLink> links = [
    CLink("Compre o Merch!", "https://www.merchbar.com/reggae-latin-world/nobuo-uematsu?srsltid=AfmBOoq7uADVVcvl66w64Ef1zP8v4AuXL-VDqHurhApgj3omHpUkIgPj"),
    CLink("Ouça as músicas!", "https://www.youtube.com/channel/UCZOd9KDD58MZR13UbbtdrpQ"),
    CLink("X do Uematsu!", "https://x.com/uematsunobuo"),
  ];

  final CImg imgN = CImg('assets/img/Nobuo.png', '', 1); 

  void _abrirLink(String url) async {
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
      appBar: AppBar(
        title: const Text("Links do Uematsu"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 183, 212, 220),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 243, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,  
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgN.img), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30), 
            ...links.map((link) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 160, 212, 220),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () => _abrirLink(link.url),
                  child: Text(
                    link.titulo,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
