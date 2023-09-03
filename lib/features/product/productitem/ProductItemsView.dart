import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/header/HeaderView.dart';
import 'package:flutterdashboard/navigationbar/NavigationBarView.dart';

import 'ProductItemController.dart';
import 'ProductItem.dart';
import 'ProductItemsWidget.dart';

class ProductItemsView extends StatefulWidget {
  const ProductItemsView({super.key});

  @override
  State<ProductItemsView> createState() => _ProductItemsViewState();
}

class _ProductItemsViewState extends State<ProductItemsView> {
  late Future<List<ProductItem>> productitem;

  @override
  void initState() {
    super.initState();
    productitem = ProductItemController.productitemGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Product Item - $headerTitle',
            //  textAlign: TextAlign.right,
          ),
        ),
        backgroundColor: sPlash2,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: const HeaderView(),
      bottomNavigationBar: const NavigationBarView(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FutureBuilder<List<ProductItem>>(
          future: productitem,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ProductItemList(productitems: snapshot.data!);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
