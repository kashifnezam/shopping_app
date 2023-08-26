import 'package:flutter/material.dart';

class Other1 extends StatefulWidget {
  const Other1(
      {super.key,
      required this.offer,
      required this.discount,
      required this.offerImage});
  final String offer;
  final String discount;
  final String offerImage;

  @override
  State<Other1> createState() => _Other1State();
}

class _Other1State extends State<Other1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: const SizedBox(
            height: 50,
            width: 320,
            child: Center(
              child: Text(
                "Subscribe",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                fit: BoxFit.fill,
                image: AssetImage(widget.offerImage),
              ),
              Container(
                color: Colors.black54,
                margin: const EdgeInsets.symmetric(vertical: 26),
                padding:
                    const EdgeInsets.symmetric(horizontal: 34, vertical: 7),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade400,
                      radius: 30,
                      child: const Icon(
                        Icons.person_outline_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sanju Shop",
                          style: TextStyle(
                              letterSpacing: 3,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Others ",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue.shade100,
                    child: TabBar(
                      indicatorColor: Colors.blueAccent,
                      indicatorWeight: 4,
                      overlayColor: MaterialStatePropertyAll(Colors.blue[100]),
                      tabs: const [
                        Tab(
                          child: Text(
                            "Description",
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Terms",
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Branches",
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.discount,
                                style: const TextStyle(
                                    fontSize: 35, color: Colors.black54)),
                            const SizedBox(
                              height: 22,
                            ),
                            Text(widget.offer,
                                style: const TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.bold)),
                            const Text(
                              "offer description goes here",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                            const Text(
                              "3rd Line",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                        child: Text("Terms will be updated soon..",
                            style: TextStyle(
                              fontSize: 17,
                            )),
                      ),
                      const Center(
                        child: Text(
                            "Coming Soon...\nBranches are not availabe in your area.",
                            style: TextStyle(
                              fontSize: 17,
                            )),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
