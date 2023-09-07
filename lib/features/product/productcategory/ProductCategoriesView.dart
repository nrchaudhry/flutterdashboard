import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/header/HeaderView.dart';

import 'ProductCategoryController.dart';
import 'ProductCategory.dart';
import 'ProductCategoriesWidget.dart';

class ProductCategoriesView extends StatefulWidget {
  const ProductCategoriesView({super.key});

  @override
  State<ProductCategoriesView> createState() => _ProductCategoriesViewState();
}

class _ProductCategoriesViewState extends State<ProductCategoriesView> {
  late Future<List<ProductCategory>> productcategory;

  @override
  void initState() {
    super.initState();
    productcategory = ProductCategoryController.productcategoryAdvancedSearch();
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
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FutureBuilder<List<ProductCategory>>(
          future: productcategory,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ProductCategoryList(productcategories: snapshot.data!);
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
