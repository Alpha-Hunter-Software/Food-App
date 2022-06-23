import 'package:flutter/material.dart';
import 'package:food_application/ui/login/login_screen.dart';
import 'package:food_application/ui/welcome/welcome_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isHide = true;
  bool isCheck = false;

  String dropdownValue = "ankara";

  List<DropdownMenuItem<String>> cityList = const [
    DropdownMenuItem<String>(
      value: "ankara",
      child: Text("Ankara"),
    ),
    DropdownMenuItem<String>(
      value: "istanbul",
      child: Text("İstanbul"),
    ),
    DropdownMenuItem<String>(
      value: "muğla",
      child: Text("Muğla"),
    ),
    DropdownMenuItem<String>(
      value: "çanakkale",
      child: Text("Çanakkale"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/fresh.png",
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      prefixIcon:
                          const Icon(Icons.person, color: Colors.orange),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: isHide,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.key, color: Colors.orange),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            if (isHide == true) {
                              isHide = false;
                            } else {
                              isHide = true;
                            }
                          });
                        },
                        child: const Icon(Icons.remove_red_eye,
                            color: Colors.orange),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          "I accept the user agreement.",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Checkbox(
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {
                            if (isCheck == true) {
                              isCheck = false;
                            } else {
                              isCheck = true;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  DropdownButton(
                    value: dropdownValue,
                    isExpanded: true,
                    items: cityList,
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value.toString();
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty &&
                    isCheck) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                      (route) => false);
                }
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Sing up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sing in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
