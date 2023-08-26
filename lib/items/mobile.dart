import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 132,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/mobile/mob3.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 132,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Diwali Offer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "30% Discount",
                      style: TextStyle(fontSize: 19),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Products(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        "View Offer",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 132,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/mobile/mob4.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 132,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Eid Discount",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "50% Discount",
                      style: TextStyle(fontSize: 19),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Products(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        "View Offer",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 132,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/mobile/mob1.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 132,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Maha Sale",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "80% Discount",
                      style: TextStyle(fontSize: 19),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Products(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        "View Offer",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 132,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/mobile/mob2.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 132,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Sunday Off",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "75% Discount",
                      style: TextStyle(fontSize: 19),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Products(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        "View Offer",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
