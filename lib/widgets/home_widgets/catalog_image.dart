import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: MyTheme.creamColor,
              borderRadius: BorderRadius.circular(8)),
          width: 130,
          height: 100,
          padding: EdgeInsets.all(10),
          child: Image.network(image)),
    );
  }
}