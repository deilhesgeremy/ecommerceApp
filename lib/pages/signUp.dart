import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final backIcon = SvgPicture.asset(
    'assets/images/svg/arrow.svg',
    width: 20,
    fit: BoxFit.contain,
  );

  final rightArrowIcon = SvgPicture.asset(
    'assets/images/svg/red-right-arrow.svg',
    width: 15,
    fit: BoxFit.contain,
  );

  final googleLogo = SvgPicture.asset(
    'assets/images/svg/google.svg',
    width: 25,
    fit: BoxFit.contain,
  );
  final facebookLogo = SvgPicture.asset(
    'assets/images/svg/facebook.svg',
    width: 25,
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    const pageColor = Color(0xfff9f9f9);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: pageColor,
          toolbarHeight: 30,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: pageColor,
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          backIcon,
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(height: 70),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Name',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                  SizedBox(height: 5),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                  SizedBox(height: 5),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Password',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: Text(
                          'Already have an account? ',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      rightArrowIcon,
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Or sign up with social account",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: googleLogo,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: facebookLogo,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50)
          ],
        ));
  }
}
