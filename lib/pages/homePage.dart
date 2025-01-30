import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';


class homePage  extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final int days=30;

  final String name= "Yesra";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map((item) => Item.fromMap(item)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)?ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            // final item = dummyList[index];
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ):Center(
          child: CircularProgressIndicator(),
        ),

          ),
      drawer: myDrawer(),
      );

  }
}
