import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyTheme.darkBlue,
              fontSize: 30),
        ),
        const Text(
          "Trending products",
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}