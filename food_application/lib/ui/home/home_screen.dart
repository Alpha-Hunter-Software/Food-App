import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Card(child: Image.asset("assets/bow.png")),
              Card(child: Image.asset("assets/fresh.png")),
              Card(child: Image.asset("assets/healthy.png")),
            ],
            options: CarouselOptions(
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: const [
                  Card(
                    child: ListTile(
                      title: Text("Salata"),
                      subtitle: Text("Marul, domates, salatalık içerir."),
                      leading: Icon(Icons.flood),
                      trailing: Icon(Icons.favorite),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Salata"),
                      subtitle: Text("Marul, domates, salatalık içerir."),
                      leading: Icon(Icons.flood),
                      trailing: Icon(Icons.favorite),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Salata"),
                      subtitle: Text("Marul, domates, salatalık içerir."),
                      leading: Icon(Icons.flood),
                      trailing: Icon(Icons.favorite),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Salata"),
                      subtitle: Text("Marul, domates, salatalık içerir."),
                      leading: Icon(Icons.flood),
                      trailing: Icon(Icons.favorite),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Salata"),
                      subtitle: Text("Marul, domates, salatalık içerir."),
                      leading: Icon(Icons.flood),
                      trailing: Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
