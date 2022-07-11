import 'package:flutter/material.dart';
import 'package:food_application/ui/zafer_profile/settings.dart';

class Editprofile extends StatefulWidget {
  Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        surfaceTintColor: Colors.orange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.lime),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pp.png'))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.lime,
                  decoration: InputDecoration(
                      labelText: "Name & Surname",
                      labelStyle: const TextStyle(
                        color: Colors.orange,
                      ),
                      prefixIcon:
                          const Icon(Icons.person, color: Colors.orange),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hoverColor: Colors.lime),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.lime,
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: const TextStyle(
                        color: Colors.orange,
                      ),
                      prefixIcon: const Icon(Icons.mail, color: Colors.orange),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hoverColor: Colors.lime),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.lime,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Colors.orange,
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hoverColor: Colors.lime),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
