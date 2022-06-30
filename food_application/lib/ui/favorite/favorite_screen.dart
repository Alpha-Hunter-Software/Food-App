import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<String> _foodNames = [
    "Ton Balıklı Salata",
    "Karnıyarık",
    "Kelle Paça",
    "Çoban Salata",
    "Risotta",
    "Tavuk",
    "Cheesecake",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: _foodNames.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.orange,
                      ),
                    ),
                    Center(
                      child: Text(
                        _foodNames[index],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
