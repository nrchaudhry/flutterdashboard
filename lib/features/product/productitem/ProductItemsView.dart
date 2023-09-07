import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/mainscreen.dart';
import 'package:flutterdashboard/header/HeaderView.dart';

import 'ProductItemController.dart';
import 'ProductItem.dart';
import 'ProductItemsWidget.dart';

class ProductItemsView extends StatefulWidget {
  final int productCategory;

  const ProductItemsView({super.key, required this.productCategory});

  @override
  // ignore: no_logic_in_create_state
  State<ProductItemsView> createState() => _ProductItemsViewState(productCategory);
}

class _ProductItemsViewState extends State<ProductItemsView> {
  late Future<List<ProductItem>> productitem;
  int productCategory;

  _ProductItemsViewState(this.productCategory);

  @override
  void initState() {
    super.initState();
    var search  = {
      'productcategory_ID': productCategory
    };

    productitem = ProductItemController.productitemAdvancedSearch(search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Menu - $headerTitle',
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
//      bottomNavigationBar: const NavigationBarView(),
      // bottomNavigationBar: NavigationBarView(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const MainScreen(currentIndex: 1)));
                  // Implement the checkout functionality here
                  // You can navigate to a checkout screen or perform any other action.
                },
                child: const Text('Back'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const MainScreen(currentIndex: 2)));
                  // Implement the checkout functionality here
                  // You can navigate to a checkout screen or perform any other action.
                },
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
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
