import 'package:flutter/material.dart';
import 'package:shopping_app/products/category.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product App Assignment",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            const Expanded(
              flex: 2,
              child: Center(
                child: Image(
                  fit: BoxFit.fill,
                  width: 350,
                  height: 320,
                  image: AssetImage(
                    'assets/shopStar1.png',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Assignmnet : Shopping App",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.lightBlue)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            shadowColor: MaterialStatePropertyAll(Colors.blue),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Sign up",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Products(),
                            ),
                          );
                        },
                        label: const Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        icon: const Icon(Icons.login),
                      ),
                    ],
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
