import 'package:flutter/material.dart';
import 'package:dariofluter/pages/data/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//nesta classe para para futuramente criar ramdon para mostra outras promoções
class _HomePageState extends State<HomePage> {
  List<String> bannerImages = [
    'assets/images/hong_kong.jpg',
    'assets/images/neve.jpg',
    'assets/images/hong_kong.jpg',
    // Adicione mais URLs conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busque o Seu Pacote'),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/logoo.jpg'), // Adicione o caminho da imagem de destaque
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Explore Destinos',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Substituímos a criação dos cartões pelos dados do arquivo data.dart
            for (var package in allPackages)
              buildDestinationCard(package.name, package.image),
          ],
        ),
      ),
    );
  }

  Widget buildDestinationCard(String destinationName, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              destinationName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Centraliza o texto
            ),
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Lógica para consultar pacotes de viagens
                },
                child: const Text('Consultar Pacotes'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para efetuar reservas
                },
                child: const Text('Efetuar Reserva'),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Lógica para entrar em contato com a equipe
                },
                child: const Text('Contato'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para obter informações detalhadas
                },
                child: const Text('Detalhes'),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Adicione aqui um widget para avaliações de estrelas (por exemplo, um conjunto de ícones de estrelas)
        ],
      ),
    );
  }
}
