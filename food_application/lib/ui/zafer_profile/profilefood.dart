import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:food_application/ui/login/login_screen.dart';
import 'package:food_application/ui/zafer_profile/editprofile.dart';
import 'package:food_application/ui/zafer_profile/mystate.dart';
import 'package:food_application/ui/zafer_profile/settings.dart';

class Profilefood extends StatefulWidget {
  const Profilefood({Key? key}) : super(key: key);

  @override
  State<Profilefood> createState() => _ProfilefoodState();
}

class _ProfilefoodState extends State<Profilefood> {
  final TextEditingController multilineContoroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        ),
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
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pp.png'))),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '99',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'videos',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '10K',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'followers',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '4500',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'following',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          cursorHeight: 16,
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Biography",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.paste, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Editprofile(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Edit Profile",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mystate(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "My state",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Settings",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
