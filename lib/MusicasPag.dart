import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_app/main.dart';

class CMusica {
  String audio;
  String titulo;

  CMusica(this.audio, this.titulo);
}

class MusicasPag extends StatefulWidget {
  MusicasPag({Key? key}) : super(key: key);

  @override
  _MusicasPagState createState() => _MusicasPagState();
}

class _MusicasPagState extends State<MusicasPag> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  final CImg imgNU = CImg('assets/img/NobuoD.png', '', 1); 
  final CMusica audioOWA = CMusica('assets/audio/OneWingedAngel.mp3', 'One Winged Angel');


  void _togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play((audioOWA.audio)); 
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

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
            title: const Text("Músicas"),
            centerTitle: true,
            backgroundColor: Color(0x00000000),
            elevation: 0,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 243, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,  
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgNU.img), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30), 
            Text(
              audioOWA.titulo,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: _togglePlayPause,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 160, 212, 220),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _isPlaying ? 'Pausar' : 'Tocar',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}