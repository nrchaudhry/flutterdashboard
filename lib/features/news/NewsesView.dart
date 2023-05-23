import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/header/HeaderView.dart';

import 'NewsController.dart';
import 'News.dart';
import 'NewsWidget.dart';

class NewsesView extends StatefulWidget {
  const NewsesView({super.key});

  @override
  State<NewsesView> createState() => _NewsesViewState();
}

class _NewsesViewState extends State<NewsesView> {
  late Future<List<News>> news;

  @override
  void initState() {
    super.initState();
    news = NewsController.newsGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'News - Kaira Group Platform',
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
        child: FutureBuilder<List<News>>(
          future: news,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return NewsList(newses: snapshot.data!);
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
