import 'package:flutter/material.dart';
import 'package:food_application/ui/favorite/favorite_screen.dart';
import 'package:food_application/ui/home/home_screen.dart';
import 'package:food_application/ui/profile/profile_screen.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndex = 0;

  // eğer bir değişken veya fonksiyon _ ile başlarsa
  // o değişken veya fonksiyon, o sınıf hariç başka hiçbir sınıftan çağrılamaz
  // private olarak geçer
  // genelde, sadece bir sınıf için kullanılan değişkenler private şekilde tanımlanır

  //değişkenler aynı zamanda, ulaşılabilirlik seviyesine göre 3 kategoride değerlendirilir
  // public değişken => genel, her yerden ulaşılır
  // private değişken => özel, sadece oluşturulan sınıftan ulaşılır
  // protected değişken => korunmuş, kalıtımla çağrılabilir

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: _currentIndex == 0
            ? HomeScreen()
            : _currentIndex == 1
                ? FavoriteScreen()
                : ProfileScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => _onTap(index),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
