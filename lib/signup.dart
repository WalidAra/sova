import 'package:flutter/material.dart';
import 'codesent.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showPassword = false;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "sova",
              style: TextStyle(
                color: Color.fromRGBO(37, 78, 218, 1),
                fontSize: 50,
                fontFamily: 'Epilogue',
              ),
            ),
            Text(
              '.',
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontFamily: 'Epilogue', fontSize: 25),
                ),
                SizedBox(height: 15),
                Text('Create your account'),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Full Name',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name here',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email here',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: 'Must be 8 characters or more',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Repeat Password',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: 'Repeat the password again',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(
                          () {
                            _isChecked = value!;
                          },
                        );
                      },
                      activeColor: Color.fromRGBO(37, 78, 218, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    RichText(
                      textAlign:
                          TextAlign.center, // set text alignment to center
                      text: TextSpan(
                        children: [
                          // First half of the text, displayed in one font
                          TextSpan(
                            text: 'i agree to the ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),

                          // Second half of the text, displayed in another font
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                                fontFamily: 'Epilogue',
                                fontSize: 16.0,
                                color: Color.fromRGBO(37, 78, 218, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(16.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(37, 78, 218, 1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CodeSentPage()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: 'Epilogue',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                RichText(
                  textAlign: TextAlign.center, // set text alignment to center
                  text: TextSpan(
                    children: [
                      // First half of the text, displayed in one font
                      TextSpan(
                        text: 'Already have a account?',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),

                      // Second half of the text, displayed in another font
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 16.0,
                            color: Color.fromRGBO(37, 78, 218, 1),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
