import 'package:flutter/material.dart';
import 'package:shopping_app/items/Items_details.dart';

class DummyList extends StatefulWidget {
  const DummyList({super.key});

  @override
  State<DummyList> createState() => _DummyListState();
}

final List<Map<String, dynamic>> _allData = [
  {
    "id": 1,
    "image": 'assets/laptop/lap1.jpg',
    "offerType": "Today's Deal",
    "discount": "Upto 30% off",
  },
  {
    "id": 2,
    "image": 'assets/laptop/lap2.jpg',
    "offerType": "New Arrival",
    "discount": "Upto 70% Save",
  },
  {
    "id": 3,
    "image": 'assets/laptop/lap3.jpg',
    "offerType": "Daily Discount",
    "discount": "80% Discount",
  },
  {
    "id": 4,
    "image": 'assets/laptop/lap4.jpg',
    "offerType": "Sunday Off",
    "discount": "75% Discount",
  },
];

class _DummyListState extends State<DummyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 132,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    _allData[index]["image"],
                  ),
                ),
              ),
              SizedBox(
                height: 132,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _allData[index]["offerType"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      _allData[index]["discount"],
                      style: const TextStyle(fontSize: 19),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mobile1(
                              offer: _allData[index]["offerType"],
                              discount: _allData[index]["discount"],
                              offerImage: _allData[index]["image"],
                            ),
                          ),
                        );
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
        );
      },
    );
  }
}
