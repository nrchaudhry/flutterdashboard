import 'package:flutter/material.dart';

import '../header/HeaderView.dart';
import '../theme.dart';

class NewsesView extends StatefulWidget {
  const NewsesView({super.key});

  @override
  State<NewsesView> createState() => _NewsesViewState();
}

class _NewsesViewState extends State<NewsesView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'News - Uog',
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
        body: Column(
          children: [Center(child: Text('News'))],
        ));
  }
}
