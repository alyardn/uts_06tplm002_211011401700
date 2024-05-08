import 'package:flutter/material.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Shoes'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CardWidget(
                      title: 'Nike Air Force 1 S50',
                      description: "Older Kids Shoes",
                      imageUrl: 'sepatu2.png',
                      backgroundColor: Color(0xFFd2c7e9), // Warna latar belakang
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CardWidget(
                      title: 'Nike SB Zoom Blazer',
                      description: "Mid Premium",
                      imageUrl: 'nike223.png',
                      backgroundColor: Color(0xFFd3f8f1), // Warna latar belakang

                    ),
                  ),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CardWidget(
                      title: 'Nike Air Zoom Pegasus',
                      description: "Men's Rood Running Shoes",
                      imageUrl: 'sepatu2.png',
                      backgroundColor: Color(0xFFfbe8ea), // Warna latar belakang

                    ),
                  ),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CardWidget(
                      title: 'Nike ZoomX Vaporfly',
                      description: "Men's Rood Racing Shoes",
                      imageUrl: 'nike223.jpeg',
                      backgroundColor: Color(0xFFe9e9e9), // Warna latar belakang

                    ),
                  ),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CardWidget(
                      title: 'Nike Waffle One',
                      description: "Men's Shoes",
                      imageUrl: 'sepatu2.png',
                      backgroundColor: Color(0xFFfcf3b2), // Warna latar belakang
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  class CardWidget extends StatelessWidget {
    final String title;
    final String description;
    final String imageUrl;
    final Color backgroundColor;

    const CardWidget({
      Key? key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.backgroundColor
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Card(
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(description),
            ],
          ),
        ),
      );
    }
  }