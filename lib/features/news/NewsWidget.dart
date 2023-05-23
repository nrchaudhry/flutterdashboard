import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'News.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.newses});

  final List<News> newses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
             child: SingleChildScrollView(
        child: Column(
          children: [for (var news in newses) 
          //Text(i.authorDETAIL.authordisplayNAME)]
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              NetworkImage(news.authorDETAIL.personDETAIL.personimgPATH),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            news.authorDETAIL.authordisplayNAME,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: 10,
                            children: const [
                              Text('12 min ago'),
                              Icon(
                                Icons.public_rounded,
                                size: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_outlined,
                          size: 25,
                        ))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          news.newsCONTENT,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: NetworkImage(news.mediacontentPATH))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 15,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              '5.8k',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text('134 comments  ',
                                  style: TextStyle(color: Colors.black))),
                          TextButton(
                              onPressed: () {},
                              child: const Text('28k shares',
                                  style: TextStyle(color: Colors.black)))
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.black,
                            ),
                          ),
                          const Text('Like',
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_outlined,
                              color: Colors.black,
                            ),
                          ),
                          const Text('Comment',
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                          ),
                          const Text('Share',
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 8,
                  color: Colors.black26,
                ),
              ]
            ),
),
        ]),
      ),
      ),
    );
  }
}
