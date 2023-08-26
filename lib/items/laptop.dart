import 'package:flutter/material.dart';

class Laptop extends StatelessWidget {
  const Laptop({super.key});

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
                    'assets/laptop/lap4.jpg',
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
                      "Today's Deal",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "Upto 30% off",
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
                    'assets/laptop/lap3.jpg',
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
                      "New Arrival",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      "Upto 70% Save",
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
                    'assets/laptop/lap2.jpg',
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
                      "Daily Discount",
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
                    'assets/laptop/lap1.jpg',
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
