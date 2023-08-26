import 'package:flutter/material.dart';
import 'package:shopping_app/items/laptop.dart';
import 'package:shopping_app/items/mobile.dart';
import 'package:shopping_app/items/others.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int _currInd = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Expanded(
          child: Container(
            color: Colors.amber,
            child: const Text(
              "Not available",
            ),
          ),
        ),
        endDrawer: const Icon(Icons.notifications),
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
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: true,
          title: const Text("Discounts"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: Column(
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
        ),
      ),
    );
  }
}
