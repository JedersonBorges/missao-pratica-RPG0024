import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. '
        'Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. '
        'Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada '
        'por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. '
        'As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.',
        softWrap: true,
      ),
    );


    Widget imageSection = Image.asset(
      'images/lake.jpg',  
      width: 600,
      height: 240,
      fit: BoxFit.cover,  
    );

    return MaterialApp(
      title: 'Demonstração de layout Flutter',
      home: Scaffold(
        appBar: AppBar(
        ),
        body: ListView(
          children: [
            imageSection,  
            titleSection,  
            buttonSection,  
            textSection,    
            // Outros elementos do corpo do aplicativo podem ser adicionados aqui.
          ],
        ),
      ),
    );
  }
}
