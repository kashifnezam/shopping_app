import 'package:flutter/material.dart';
import 'package:shopping_app/items/Items_details.dart';

import 'package:shopping_app/items/laptop.dart';
import 'package:shopping_app/items/mobile.dart';
import 'package:shopping_app/items/others.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Map<String, dynamic>> results = [];
// Data to be searched
  final List<Map<String, dynamic>> _allData = [
    {
      "id": 1,
      "image": 'assets/mobile/mob3.jpg',
      "offerType": "Diwali Offer",
      "discount": "30% Discount",
    },
    {
      "id": 2,
      "image": 'assets/mobile/mob4.jpg',
      "offerType": "Eid Discount",
      "discount": "50% Discount",
    },
    {
      "id": 3,
      "image": 'assets/mobile/mob1.jpg',
      "offerType": "Maha Sale",
      "discount": "80% Discount",
    },
    {
      "id": 4,
      "image": 'assets/mobile/mob2.jpg',
      "offerType": "Sunday Off",
      "discount": "75% Discount",
    },
    {
      "id": 5,
      "image": 'assets/laptop/lap1.jpg',
      "offerType": "Today's Deal",
      "discount": "Upto 30% off",
    },
    {
      "id": 6,
      "image": 'assets/laptop/lap2.jpg',
      "offerType": "New Arrival",
      "discount": "Upto 70% Save",
    },
    {
      "id": 7,
      "image": 'assets/laptop/lap3.jpg',
      "offerType": "Daily Discount",
      "discount": "80% Discount",
    },
    {
      "id": 8,
      "image": 'assets/laptop/lap4.jpg',
      "offerType": "Sunday Off",
      "discount": "75% Discount",
    },
    {
      "id": 9,
      "image": 'assets/other/hp4.jpg',
      "offerType": "Combo Offer",
      "discount": "Save upto 80%",
    },
    {
      "id": 10,
      "image": 'assets/other/hp1.jpg',
      "offerType": "Sunday Sale",
      "discount": "Upto 50% off",
    },
    {
      "id": 11,
      "image": 'assets/other/hp2.png',
      "offerType": "Friday Discount",
      "discount": "Friday Discount",
    },
    {
      "id": 4,
      "image": 'assets/other/hp3.jpg',
      "offerType": "Maha Sale",
      "discount": "80% + 10% Off",
    },
  ];
  @override
  void initState() {
    results = _allData;

    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      setState(() {
        results = _allData;
      });
    } else {
      setState(() {
        results = _allData
            .where((user) => user["offerType"]
                .toLowerCase()
                .contains(enteredKeyword.toLowerCase()))
            .toList();
      });
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
  }

  // searching boolean check
  var _isSearch = false;
  var searchValue = '';
  int _currInd = 0;
  String textFieldValue = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue.shade100,
            fixedColor: Colors.blue[800],
            unselectedItemColor: Colors.black54,
            currentIndex: _currInd,
            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            selectedFontSize: 20,
            unselectedFontSize: 14,
            onTap: (value) {
              setState(() {
                _currInd = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: "Points",
                icon: Icon(Icons.wallet),
              ),
              BottomNavigationBarItem(
                label: "Discount",
                icon: Icon(Icons.discount_outlined),
              ),
              BottomNavigationBarItem(
                label: "Services",
                icon: Icon(Icons.miscellaneous_services_outlined),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: Icon(Icons.history_sharp),
              ),
            ],
          ),
          appBar: _isSearch
              ? AppBar(actions: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 23,
                    ),
                    width: 350,
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                          prefixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _isSearch = false;
                                });
                              },
                              child: const Icon(Icons.arrow_back)),
                          hintText: "Search..",
                          suffixIcon: const Icon(Icons.search),
                          fillColor: Colors.blue.shade100,
                          filled: true,
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                  )
                ])
              : AppBar(
                  leading: _isSearch
                      ? IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back),
                        )
                      : const Icon(Icons.menu),
                  toolbarHeight: 65,
                  centerTitle: true,
                  title: const Text("Discounts"),
                  actions: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isSearch = true;
                        });
                      },
                      icon: const Icon(Icons.search_rounded),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 18.0, left: 18),
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
          body: _isSearch
              ? results.isEmpty
                  ? const Center(
                      child: Text("Data Not Found"),
                    )
                  : ListView.builder(
                      itemCount: results.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 132,
                                width: 172,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2)),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    results[index]["image"],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 132,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      results[index]["offerType"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    Text(
                                      results[index]["discount"],
                                      style: const TextStyle(fontSize: 19),
                                    ),
                                    ElevatedButton(
                                      style: const ButtonStyle(
                                        shadowColor: MaterialStatePropertyAll(
                                            Colors.blue),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.blue),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Mobile1(
                                              offer: results[index]
                                                  ["offerType"],
                                              discount: results[index]
                                                  ["discount"],
                                              offerImage: results[index]
                                                  ["image"],
                                            ),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "View Offer",
                                        style: TextStyle(
                                            fontSize: 19, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
              : Column(
                  children: [
                    TabBar(
                      indicatorWeight: 4,
                      overlayColor: MaterialStatePropertyAll(Colors.blue[100]),
                      tabs: const [
                        Tab(
                          child: Text(
                            "Mobile",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Laptop",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Others",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: TabBarView(children: [
                        Mobile(),
                        Laptop(),
                        Other(),
                      ]),
                    ),
                  ],
                )),
    );
  }
}
