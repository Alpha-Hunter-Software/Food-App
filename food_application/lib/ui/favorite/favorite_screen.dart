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

  final List<String> _foodImages = [
    "assets/bow.png",
    "assets/fresh.png",
    "assets/healthy.png",
    "assets/bow.png",
    "assets/fresh.png",
    "assets/healthy.png",
    "assets/bow.png",
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
            return InkWell(
              onTap: () {
                _showAlertDialog(index);
              },
              child: Card(
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _foodNames[index],
                            ),
                            Image.asset(
                              _foodImages[index],
                              height: 120,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showAlertDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(_foodNames[index]),
          content: const Text("Silmek istediğinize emin misiniz?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _foodNames.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: const Text("Evet"),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                  color: Colors.orange,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Hayır"),
                  )),
            )
          ],
        );
      },
    );
  }
}
