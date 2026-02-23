import 'package:flutter/material.dart';

class Detalisitems extends StatefulWidget {
  final data;
  const Detalisitems({super.key, this.data});
  @override
  State<Detalisitems> createState() => _DetalisitemsState();
}

class _DetalisitemsState extends State<Detalisitems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart, color: Colors.deepOrange),
            SizedBox(width: 5),
            Text("Ecommerce", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 90),

          // Icon instead of Image
          Container(
            height: 200,

            child: Icon(
              widget.data["icon"],
              size: 120,
              color: widget.data["iconColor"],
            ),
          ),

          SizedBox(height: 30),
          Text(
            widget.data["adress"],
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            widget.data["Grad"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Text(
            widget.data["prise"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.deepOrange,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(width: 10),
              Container(
                width: 20,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepOrange),
                ),
              ),
              SizedBox(width: 5),
              Text("Grey"),
              SizedBox(width: 10),
              Container(
                width: 20,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text("Black"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Size : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("32, "),
              Text("32, "),
              Text("32, "),
              Text("32, "),
              Text("32 "),
            ],
          ),
          SizedBox(height: 80),

          Container(
            margin: EdgeInsets.only(left: 80, right: 80, top: 30),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "add To cart",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
