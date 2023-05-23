import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  late OverlayEntry _popupDialog;
  List<String> imageUrls = [
    'assets/imgs/qamar/n.png',
    'assets/imgs/qamar/k.png',
    'assets/imgs/qamar/u.png',
    'assets/imgs/qamar/s.png',
    'assets/imgs/qamar/j.png',
    'assets/imgs/qamar/n.png',
    'assets/imgs/qamar/k.png',
    'assets/imgs/qamar/u.png',
    'assets/imgs/qamar/s.png',
    'assets/imgs/qamar/j.png',
    'assets/imgs/qamar/n.png',
    'assets/imgs/qamar/k.png',
    'assets/imgs/qamar/u.png',
    'assets/imgs/qamar/s.png',
    'assets/imgs/qamar/j.png',
    'assets/imgs/qamar/n.png',
    'assets/imgs/qamar/k.png',
    'assets/imgs/qamar/u.png',
    'assets/imgs/qamar/s.png',
    'assets/imgs/qamar/j.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        children: imageUrls.map(_createGridTileWidget).toList(),
      ),
    );
  }

  Widget _createGridTileWidget(String url) => Builder(
        builder: (context) => GestureDetector(
          onLongPress: () {
            _popupDialog = _createPopupDialog(url);
            Overlay.of(context)!.insert(_popupDialog);
          },
          onLongPressEnd: (details) => _popupDialog.remove(),
          child: Image.asset(url, fit: BoxFit.cover),
        ),
      );

  OverlayEntry _createPopupDialog(String url) {
    return OverlayEntry(
      builder: (context) => AnimatedDialog(
        child: _createPopupContent(url),
      ),
    );
  }

  Widget _createPhotoTitle() => Container(
      width: double.infinity,
      color: Colors.white,
      // ignore: prefer_const_constructors
      child: ListTile(
        // ignore: prefer_const_constructors
        leading: CircleAvatar(
          backgroundImage: const AssetImage('assets/imgs/qamar/n.png'),
        ),
        // ignore: prefer_const_constructors
        title: Text(
          'NR chaudhry',
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ));

  Widget _createActionBar() => Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            // ignore: prefer_const_constructors
            Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.black,
            ),
            // ignore: prefer_const_constructors
            Icon(
              Icons.send,
              color: Colors.black,
            ),
          ],
        ),
      );

  Widget _createPopupContent(String url) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _createPhotoTitle(),
              Image.network(url, fit: BoxFit.fitWidth),
              _createActionBar(),
            ],
          ),
        ),
      );
}

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<StatefulWidget> createState() => AnimatedDialogState();
}

class AnimatedDialogState extends State<AnimatedDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOutExpo);
    opacityAnimation = Tween<double>(begin: 0.0, end: 0.6).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOutExpo));

    controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(opacityAnimation.value),
      child: Center(
        child: FadeTransition(
          opacity: scaleAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
