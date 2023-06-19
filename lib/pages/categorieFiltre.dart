import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _white = Color(0xffffffff);
const _lightGrey = Color(0xFFf5f5f5);
const _black = Colors.black;
const _grey = Colors.grey;
const _red = Colors.red;

final _bold32TextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 32);
final _whiteTextStyle = TextStyle(color: _white);
final _greyTextStyle = TextStyle(color: _grey);
final _redTextStyle = TextStyle(color: _red);

class CategoryFilterPage extends StatefulWidget {
  @override
  _CategoryFilterPageState createState() => _CategoryFilterPageState();
}

class _CategoryFilterPageState extends State<CategoryFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: _white,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset('assets/images/svg/arrow.svg'),
      ),
      actions: [IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/images/svg/search.svg'))],
    );
  }

  Container _buildBody() {
    return Container(
      color: _white,
      child: ListView(
        children: [
          _buildTitle(),
          _buildFilterChips(),
          _buildFilters(),
          _buildProductCards(),
        ],
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Women's tops", style: _bold32TextStyle),
    );
  }

  Container _buildFilterChips() {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ['T-shirts', 'Crop Tops', 'Sleeveless', 'Shirt'].map((label) => _buildFilterChip(label)).toList(),
      ),
    );
  }

  Padding _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.5),
      child: Chip(
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Text(label, style: _whiteTextStyle),
        ),
        backgroundColor: _black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  Container _buildFilters() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/svg/filtre.svg'),
          Text(" Filters", style: TextStyle(color: _black)),
          Spacer(),
          SvgPicture.asset('assets/images/svg/prixFiltre.svg'),
          Text(" Price: lowest to high", style: TextStyle(color: _black)),
          Spacer(),
          SvgPicture.asset('assets/images/svg/carres-icon.svg'),
        ],
      ),
    );
  }

  Container _buildProductCards() {
    var products = [
      Product('Pullover', 'Mango', 4, '51', 'assets/images/png/pullover-image.png'),
      Product('Blouse', 'Dorothy Perkins', 0, '34', 'assets/images/png/blouse-image.png'),
      Product('T-shirt', 'LOST Ink', 5, '40', 'assets/images/png/t-shirt-image.png'),
      Product('Shirt', 'Zara', 3, '40', 'assets/images/png/shirt-image.png'),
    ];

    return Container(
      color: _lightGrey,
      child: Column(children: products.map((product) => _buildProductCard(product)).toList()),
    );
  }

  Widget _buildProductCard(Product product) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: _white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    product.brand,
                    style: TextStyle(color: _grey, fontSize: 16),
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        SvgPicture.asset(
                          i < product.rating ? 'assets/images/svg/yellow-star.svg' : 'assets/images/svg/star.svg',
                          width: 20,
                        ),
                      Text(
                        '(${product.rating})',
                        style: TextStyle(color: _grey),
                      ),
                    ],
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: _white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: _grey.withOpacity(0.2),
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
          _buildBottomNavigationBarColumn('assets/images/svg/home-unselected.svg', 'Home', _grey),
          _buildBottomNavigationBarColumn('assets/images/svg/shop-rouge.svg', 'Shop', _red),
          _buildBottomNavigationBarColumn('assets/images/svg/bag.svg', 'Bag', _grey),
          _buildBottomNavigationBarColumn('assets/images/svg/favorites.svg', 'Favorites', _grey),
          _buildBottomNavigationBarColumn('assets/images/svg/profile.svg', 'Profile', _grey),
        ],
      ),
    );
  }

  Column _buildBottomNavigationBarColumn(String imagePath, String text, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          width: 25,
        ),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

class Product {
  final String title;
  final String brand;
  final int rating;
  final String price;
  final String imagePath;

  Product(this.title, this.brand, this.rating, this.price, this.imagePath);
}
