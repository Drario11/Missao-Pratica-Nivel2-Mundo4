// explore_page.dart
import 'package:flutter/material.dart';
import './data/data.dart'; // Importa o arquivo data.dart
import './data/travel_package.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<TravelPackage> displayedPackages = [];

  @override
  void initState() {
    super.initState();
    displayedPackages.addAll(allPackages); // Usa a lista do arquivo data.dart
  }

  void filterPackages(String query) {
    setState(() {
      displayedPackages = allPackages
          .where((package) =>
              package.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: filterPackages,
          decoration: const InputDecoration(
            hintText: 'Pesquisar pacotes de viagem',
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 230, 190, 190))),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: displayedPackages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(displayedPackages[index].name),
            subtitle: Text(
                'Pontuação: ${displayedPackages[index].rating} - Preço: \$${displayedPackages[index].price}'),
            leading: Image.network(
              displayedPackages[index].image,
              width: 50,
              height: 50,
            ),
          );
        },
      ),
    );
  }
}
