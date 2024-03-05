import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agência de Viagem'),
        centerTitle: true,
        backgroundColor: Colors.red, // Cor de fundo do AppBar
        leading: Image.asset(
          'assets/images/logoo.jpg', // Substitua pelo caminho do seu logo
          width: 40, // Ajuste conforme necessário
          height: 40, // Ajuste conforme necessário
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Agência de Viagem',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height:
                      20), // Espaço entre o nome da empresa e as informações de contato
              Text(
                'Localização: Rua da Agência, 123',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Telefone: (123) 456-7890',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'E-mail: contato@agenciadeviagem.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
