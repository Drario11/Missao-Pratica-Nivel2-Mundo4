import 'package:flutter/material.dart';
import 'data/data.dart';
import 'data/resource_text.dart'; // Importa o arquivo resource_text.dart
import 'profile_page.dart';

class FavoritesPage extends StatelessWidget {
  void navigateToProfilePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(),
      ),
    );
  }

  void openContactSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Contato',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text('Telefone: +123456789'),
              Text('E-mail: exemplo@example.com'),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Adicione ação para abrir o link do WhatsApp
                },
                child: Text('Abrir WhatsApp'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Fechar a folha inferior
                },
                child: Text('Fechar'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Favoritos de viagens')),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagem de Destaque
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(allPackages[0].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Título e Avaliação
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      ResourceTexts.canadaTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text('4.5'),
                    ],
                  ),
                ],
              ),
            ),

            // Subtítulo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                ResourceTexts.canadaSubtitle,
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            // Texto Aleatório
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                ResourceTexts.exploreCanada,
                style: TextStyle(fontSize: 12),
              ),
            ),

            // Botões de Ação no final do texto
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      openContactSheet(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on),
                    onPressed: () {
                      // Adicione ação para rota
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // Adicione ação para compartilhar
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
