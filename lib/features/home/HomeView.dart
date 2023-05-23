import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/header/HeaderView.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Kaira Group News',
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
      drawer: HeaderView(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/imgs/qamar/k.png'),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "what's on your mind?",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  )),
              Container(
                height: 60,
                child: const VerticalDivider(
                  color: Colors.black26,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo_album_outlined,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'photo',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.black26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.post_add_outlined,
                      //
                    ),
                    Text(
                      'Text',
                      style: TextStyle(
                        // fontSize: 17,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                child: const VerticalDivider(
                  color: Colors.black26,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.video_call_outlined, color: Colors.redAccent,
                      //
                    ),
                    Text(
                      'Video Call',
                      style: TextStyle(
                        //  fontSize: 17,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                child: const VerticalDivider(
                  color: Colors.black26,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined, color: Colors.redAccent,
                      //
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                        //   fontSize: 17,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 8,
            color: Colors.black26,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(spacing: 10, children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              width: 125,
                              child: const ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/imgs/uog/p5.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Add to Story',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 32,
                          left: 50,
                          child: Icon(
                            Icons.add_circle_rounded,
                            color: Colors.blueAccent,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 125,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                image: AssetImage('assets/imgs/qamar/k.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'shoaib',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const Divider(
            thickness: 8,
            color: Colors.black26,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
                Row(
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: (const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/imgs/qamar/k.png'),
                        ))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shoaib Hassan',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Image(image: AssetImage('assets/imgs/qamar/k.png'))
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
              ],
            ),
          )
        ]),
      ),
    );
  }
}
