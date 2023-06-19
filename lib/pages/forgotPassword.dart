import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final Widget arrowBack = SvgPicture.asset(
    'assets/images/svg/arrow.svg',
    width: 20,
    fit: BoxFit.scaleDown,
  );

  @override
  Widget build(BuildContext context) {
    const primaryBgColor = Color(0xfff9f9f9);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBgColor,
        toolbarHeight: 30,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: primaryBgColor,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: arrowBack,
                  onTap: () => Navigator.pop(context),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 25),
                  child: const Text(
                    "Reset Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  "Enter your email to get a password reset link.",
                ),
                Card(
                  margin: const EdgeInsets.only(top: 20, bottom: 80),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Email',
                      floatingLabelStyle: TextStyle(height: 2),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Colors.white, 
                          letterSpacing: 1,
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
    );
  }
}
