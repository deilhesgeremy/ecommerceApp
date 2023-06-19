import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Widget MainImage = Image.asset(
    'assets/images/png/main-home-image.png',
    width: double.infinity,
    fit: BoxFit.fill,
  );

  final Widget itemListImage1 = Image.asset(
    'assets/images/png/item-list-image.png',
    fit: BoxFit.scaleDown,
  );

  final Widget itemListImage2 = Image.asset(
    'assets/images/png/item-list-image2.png',
    fit: BoxFit.scaleDown,
  );

  final Widget itemListImage3 = Image.asset(
    'assets/images/png/item-list-image3.png',
    fit: BoxFit.scaleDown,
  );

  final Widget itemListImage4 = Image.asset(
    'assets/images/png/item-list-image4.png',
    fit: BoxFit.scaleDown,
  );
  final Widget itemListImage5 = Image.asset(
    'assets/images/png/item-list-image5.png',
    fit: BoxFit.scaleDown,
  );

  final Widget favorite = SvgPicture.asset(
    'assets/images/svg/favoris.svg',
    width: 10,
  );

  final Widget star = SvgPicture.asset(
    'assets/images/svg/star.svg',
    width: 12,
  );

  final Widget starFilled = SvgPicture.asset(
    'assets/images/svg/yellow-star.svg',
    width: 12,
  );

  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 200,
            width: double.infinity,
            color: Colors.amber,
            child: Stack(children: [
              MainImage,
              const Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Text('Street Clothes',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sale',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    Text('view all', style: TextStyle(fontSize: 12))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Super summer sale',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(189, 189, 189, 1))),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                      padding: EdgeInsets.zero,
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemExtent: 160,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(10)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Evening Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage2,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(10)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const Text('Sittly',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Sport Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "22\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "19\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage3,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(10)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Sport Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "14\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-15%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(10)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const Text('Mango',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Evening Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "25\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "19\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                      ]),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    Text('view all', style: TextStyle(fontSize: 12))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('You\'ve never seen it before',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(189, 189, 189, 1))),
                  ),
                ),
                SizedBox(
                  height: 310,
                  child: ListView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemExtent: 160,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage4,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("NEW",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text('OVS',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Blouse',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "30\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            decoration: TextDecoration.none),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, right: 5.0),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage5,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("NEW",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text('Mango Boy',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'T-Shirt Sailing',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "10\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            decoration: TextDecoration.none),
                                      ),
                                      SizedBox(width: 7),
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, left: 5.0),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage5,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("NEW",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text('Cool',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Jeans',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "45\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            decoration: TextDecoration.none),
                                      ),
                                      SizedBox(width: 7),
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, left: 10.0),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage4,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("NEW",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      star,
                                      const SizedBox(width: 3),
                                      const Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text('Mango',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Pant',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: [
                                      Text(
                                        "19\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            decoration: TextDecoration.none),
                                      ),
                                      SizedBox(width: 7),
                                    ],
                                  )
                                ]),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ],
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/home.svg',
                  width: 25,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/categorieList');
                  },
                  child: SvgPicture.asset(
                    'assets/images/svg/shop.svg',
                    width: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/categorieList');
                  },
                  child: Text(
                    'Shop',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/bag.svg',
                  width: 25,
                ),
                Text(
                  'Bag',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/favorites.svg',
                  width: 25,
                ),
                Text(
                  'Favorites',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/profile.svg',
                  width: 25,
                ),
                Text(
                  'Profile',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
