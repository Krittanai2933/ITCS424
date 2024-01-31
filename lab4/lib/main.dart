import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("6488053")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcWm6LQGK7BzRAi8Sj9X9vDJjGd7vZZO27Ug&usqp=CAU",
              isNetworkImage: true),
          ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image: "Pixel.png",
              isNetworkImage: false),
          ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image:
                  "https://m.media-amazon.com/images/I/61hTLkamgBL._AC_UF894,1000_QL80_.jpg",
              isNetworkImage: true),
          ProductBox(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image: "Tablet.png",
              isNetworkImage: false),
          ProductBox(
              name: "Pendrive",
              description: "Pendrive is a useful storage medium",
              price: 100,
              image: "Pendrive.png",
              isNetworkImage: false),
          ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is a useful rescue storage medium",
              price: 20,
              image:
                  "https://th.bing.com/th/id/R.52f7219984fdf56dc288fbab81840a7f?rik=vgi8IFRNzdayiQ&pid=ImgRaw&r=0",
              isNetworkImage: true),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isNetworkImage,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isNetworkImage
                ? Image.network(image, width: 80, height: 80)
                : Image.asset("appimages/" + image, width: 80, height: 80),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
