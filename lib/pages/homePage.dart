import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:google_fonts/google_fonts.dart';


class homePage  extends StatelessWidget {
  final int days=30;
  final String name= "Yesra";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return ItemWidget(item: CatalogModel.items[index]
            );
          },

          ),
      ),
      drawer: myDrawer(),
      );

  }
}
