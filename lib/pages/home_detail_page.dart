import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at top-left
    path.moveTo(0, 30); // Starting point of arc

    // Create upward arc
    path.quadraticBezierTo(
      size.width / 2, // control point x (middle of width)
      90, // control point y (higher value makes upward arc)
      size.width, // end point x
      30, // end point y
    );

    // Complete the shape
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: OverflowBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${catalog.price}",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade900),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyTheme.darkBlue),
                ),
                onPressed: () {},
                child: const Text(
                  "Buy",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.network(
                    catalog.image,
                    height: 180,
                  ),
                )),
            Expanded(
              child: ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Text(
                          catalog.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: MyTheme.darkBlue),
                        ),
                      ),
                      Text(
                        catalog.desc,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: MyTheme.darkBlue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
