import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class CJogo {
  String jogo;
  String participacao;

  CJogo(this.jogo, this.participacao);
}

class CTrabalho {
  String empresa;
  String resumo;

  CTrabalho(this.empresa, this.resumo);
}

class TrabalhosPag extends StatelessWidget {
  TrabalhosPag({Key? key}) : super(key: key);

  final CDesc1 descT1 = CDesc1(
    '   Nobuo Uematsu é um dos compositores mais icônicos da indústria dos games, conhecido principalmente por suas contribuições para a série Final Fantasy.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );
  final CDesc1 descT2 = CDesc1(
    '   Uematsu deixou a Square Enix em 2004 para explorar novos horizontes, mas continuou a colaborar em projetos da franquia Final Fantasy em alguns jogos subsequentes.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );

  final CImg imgT1 = CImg('assets/img/Nobuo4.png', '', 1);
  final CImg imgT2 = CImg('assets/img/Nobuo4.png', '', 1);
  final CImg imgT3 = CImg('assets/img/Nobuo4.png', '', 1);
  final CImg imgT4 = CImg('assets/img/Nobuo4.png', '', 1);

  final CTrabalho t1 = CTrabalho(
    '  Square (1986)',
    ' Durante esse período, ele compôs para vários jogos, mas se destacou mesmo ao criar as trilhas sonoras da franquia Final Fantasy, que se tornaram clássicos:',
  );
  final CTrabalho t2 = CTrabalho(
    '  Smile Please e Dog Ear Records (2004)',
    ' Após sair da Square Enix, Uematsu fundou seu próprio estúdio, Smile Please, e a gravadora Dog Ear Records em 2004. Essas entidades permitiram que ele tivesse mais liberdade criativa e trabalhasse em projetos variados:',
  );
  final CTrabalho t3 = CTrabalho(
    '  Concertos',
    ' Além dos jogos, Nobuo Uematsu tem uma presença forte no mundo dos concertos de música de videogame:',
  );
  final CTrabalho t4 = CTrabalho(
    '  Legado',
    ' Uematsu é amplamente considerado um dos maiores compositores de videogame de todos os tempos. Seu trabalho não só ajudou a definir a identidade musical de Final Fantasy, mas também influenciou como a música de videogame é percebida mundialmente.',
  );

  final CJogo ff = CJogo(
    '  Final Fantasy (1987):',
    '  A trilha que deu início à sua fama, com o tema "Prelude" se tornando um ícone da série.',
  );

  final CJogo ffvi = CJogo(
    '  Final Fantasy VI (1994):',
    '  Considerada uma de suas melhores trilhas sonoras, com músicas memoráveis como "Terra\'s Theme".',
  );

  final CJogo ffvii = CJogo(
    '  Final Fantasy VII (1997):',
    '  Talvez sua obra mais famosa, especialmente pela faixa "One-Winged Angel", que marcou o antagonista Sephiroth.',
  );

  final CJogo ffviii = CJogo(
    '  Final Fantasy VIII (1999):',
    '  A música "Eyes on Me", cantada por Faye Wong, foi um grande sucesso e ganhou um prêmio de melhor música de videogame.',
  );

  final CJogo ffix = CJogo(
    '  Final Fantasy IX (2000):',
    '  Outro marco na sua carreira, trazendo uma sonoridade nostálgica e melodias emocionantes.',
  );

  final CJogo ffx = CJogo(
    '  Final Fantasy X (2001):',
    '  O primeiro jogo da série a incluir dublagem, com a trilha sonora igualmente impactante. A faixa "To Zanarkand" é uma das mais aclamadas.',
  );

  final CJogo bd = CJogo(
    '  Blue Dragon (2006):',
    '  Jogo desenvolvido pela Mistwalker, a empresa de Hironobu Sakaguchi, criador de Final Fantasy. Uematsu compôs a trilha sonora, que foi bastante elogiada.',
  );
  final CJogo lo = CJogo(
    '  Lost Odyssey (2007):',
    '  Outro projeto em colaboração com Sakaguchi na Mistwalker. A música tem o estilo emocional característico de Uematsu.',
  );
  final CJogo tls = CJogo(
    '  The Last Story (2011):',
    '  Mais um trabalho com a Mistwalker, onde ele trouxe uma trilha sonora rica para complementar o RPG.',
  );
  final CJogo dw = CJogo(
    '  Distant Worlds: Music from Final Fantasy:',
    '  Esse concerto tem sido realizado mundialmente desde 2007, apresentando orquestras sinfônicas tocando suas obras mais famosas de Final Fantasy.',
  );
  final CJogo tj = CJogo(
    '  Tour de Japon:',
    '  Concerto focado em Final Fantasy que aconteceu exclusivamente no Japão em 2004 e 2005.',
  );
  final CJogo nw = CJogo(
    '  A New World: Intimate Music from Final Fantasy:',
    '  Versão mais compacta e intimista dos concertos de Distant Worlds, com arranjos orquestrais menores.',
  );
  final CJogo bm = CJogo(
    '  The Black Mages:',
    '  Uematsu fundou essa banda de rock progressivo para tocar versões mais pesadas das músicas de Final Fantasy.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trabalhos"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 183, 212, 220),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 243, 242),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildSection(imgT1, descT1.texto, t1),
          ...buildJogos([ff, ffvi, ffvii, ffviii, ffix, ffx]),
          buildSection(imgT2, descT2.texto, t2),
          ...buildJogos([bd, lo, tls]),
          buildSection(imgT3, null, t3),
          ...buildJogos([dw, tj, nw, bm]),
          buildSection(imgT4, null, t4),
        ],
      ),
    );
  }

  Widget buildSection(CImg img, String? texto, CTrabalho trabalho) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 160, 212, 220),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(img.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (texto != null) ...[
            const SizedBox(height: 15),
            Text(
              texto,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            const SizedBox(height: 20),
          ],
          Text(
            trabalho.empresa,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            trabalho.resumo,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
        ],
      ),
    );
  }

  List<Widget> buildJogos(List<CJogo> jogos) {
    return jogos.map((jogo) {
      return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 160, 212, 220),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jogo.jogo,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              jogo.participacao,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      );
    }).toList();
  }
}