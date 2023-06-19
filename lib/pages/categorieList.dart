import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesOverview extends StatefulWidget {
  @override
  _CategoriesOverviewState createState() => _CategoriesOverviewState();
}

class _CategoriesOverviewState extends State<CategoriesOverview> {
  @override
  Widget build(BuildContext context) {
    final _white = Color(0xffffffff);
    final _red = Color(0xFFDB3022);
    final _lightGrey = Color(0xFFf5f5f5);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/images/svg/left-arrow.svg'),
        ),
        title: Text(
          'Category List',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/svg/magnifier.svg'),
          ),
        ],
      ),
      body: Container(
        color: _lightGrey,
        child: ListView(
          children: [
            Container(
              color: Color.fromARGB(255, 252, 252, 252),
              child: Row(
                children: [
                  _buildCategory('Women', true),
                  _buildCategory('Men'),
                  _buildCategory('Kids'),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildBanner('HOT SUMMER', 'Get 50% off', _red),
            SizedBox(height: 20),
            _buildCategoryCard('Latest', 'assets/images/png/new.png'),
            SizedBox(height: 20),
            _buildCategoryCard('Clothing', 'assets/images/png/clothes.png'),
            SizedBox(height: 20),
            _buildCategoryCard('Footwear', 'assets/images/png/shoes.png'),
            SizedBox(height: 20),
            _buildCategoryCard('Accessories', 'assets/images/png/accesories.png'),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildCategory(String name, [bool selected = false]) {
    final isOther = name == 'Men' || name == 'Kids';
    return Expanded(
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              color: selected ? Colors.black : const Color.fromARGB(255, 50, 50, 50),
              fontWeight: selected || !isOther ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          SizedBox(height: 8),
          if (selected)
            Container(
              width: double.infinity,
              height: 3,
              color: Color(0xFFDB3022),
            ),
        ],
      ),
    );
  }

  Widget _buildBanner(String title, String subtitle, Color color) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String cardText, String imagePath) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 2),
              child: Text(
                cardText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
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
          _buildNavItem('/home', 'assets/images/svg/home-unselected.svg', 'Home'),
          _buildNavItem('/home', 'assets/images/svg/shop-rouge.svg', 'Shop', Colors.red),
          _buildNavItem('/bag', 'assets/images/svg/bag.svg', 'Bag'),
          _buildNavItem('/favorites', 'assets/images/svg/favorites.svg', 'Favorites'),
          _buildNavItem('/profile', 'assets/images/svg/profile.svg', 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String route, String asset, String title, [Color color = Colors.grey]) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: SvgPicture.asset(
            asset,
            width: 25,
          ),
        ),
        Text(
          title,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
