import 'package:flutter/material.dart';

class ArtistaPag extends StatelessWidget {
  const ArtistaPag({Key? key}) : super(key: key);

  @override
 
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
            title: const Text("Artista"),
            centerTitle: true,
            backgroundColor: Color(0x00000000),
            elevation: 0,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 243, 242),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 212, 220),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(15),
          child: const Text(
            "Conteúdo da página do artista",
            style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}