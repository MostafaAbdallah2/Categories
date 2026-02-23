import 'package:categories/detalis.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State createState() => _HomapageState();
}

class _HomapageState extends State {
  //photos Row
  List photos = [
    {"name": "Phones", "icon": Icons.smartphone},
    {"name": "Laptops", "icon": Icons.laptop},
    {"name": "Tablets", "icon": Icons.tablet},
    {"name": "Watches", "icon": Icons.watch},
    {"name": "Headphones", "icon": Icons.headphones},
    {"name": "Cameras", "icon": Icons.camera_alt},
    {"name": "TVs", "icon": Icons.tv},
    {"name": "Gaming", "icon": Icons.sports_esports},
  ];

  //items
  List selling = [
    {
      "icon": Icons.smartphone,
      "iconColor": Colors.blue,
      "adress": "iPhone 15 Pro",
      "Grad": "Apple",
      "prise": "999\$",
    },
    {
      "icon": Icons.laptop,
      "iconColor": Colors.indigo,
      "adress": "MacBook Air M3",
      "Grad": "Apple",
      "prise": "1099\$",
    },
    {
      "icon": Icons.headphones,
      "iconColor": Colors.deepPurple,
      "adress": "Sony WH-1000XM5",
      "Grad": "Sony",
      "prise": "349\$",
    },
    {
      "icon": Icons.watch,
      "iconColor": Colors.teal,
      "adress": "Galaxy Watch 6",
      "Grad": "Samsung",
      "prise": "299\$",
    },
    {
      "icon": Icons.tablet,
      "iconColor": Colors.orange,
      "adress": "iPad Pro 12.9",
      "Grad": "Apple",
      "prise": "1199\$",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Person",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: "Search ",
                      hintStyle: TextStyle(fontWeight: FontWeight.normal),
                      filled: true,
                      fillColor: Colors.grey.shade400,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.menu),
              ],
            ),
            SizedBox(height: 40),

            //Categories
            Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            //Photos
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(photos.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          photos[index]["icon"],
                          size: 36,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

            //Best Selling
            SizedBox(height: 40),
            Text(
              "Best Selling",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            GridView.builder(
              itemCount: selling.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 265,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            Detalisitems(data: selling[index]),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 150,
                          color: Colors.grey,
                          child: Icon(
                            selling[index]["icon"],
                            size: 80,
                            color: selling[index]["iconColor"],
                          ),
                        ),
                        Text(
                          selling[index]["adress"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Text(
                          selling[index]["Grad"],
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        Text(
                          selling[index]["prise"],
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
