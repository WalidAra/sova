import 'package:flutter/material.dart';
import 'forgetpassword.dart';
import 'codesent.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                fontFamily: 'Epilogue',
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Epilogue',
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email here',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Epilogue',
                ),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 15),
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
                Text('Remember me'),
                SizedBox(width: 28),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    elevation: MaterialStateProperty.all<double>(0.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color.fromRGBO(37, 78, 218, 1),
                      fontFamily: 'Epilogue',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
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
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontFamily: 'Epilogue',
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            RichText(
              textAlign: TextAlign.center, // set text alignment to center
              text: TextSpan(
                children: [
                  // First half of the text, displayed in one font
                  TextSpan(
                    text: 'Don\'t have account?',
                    style: TextStyle(
                      fontFamily: 'Font1',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),

                  // Second half of the text, displayed in another font
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
                      fontFamily: 'Epilogue',
                      fontSize: 16.0,
                      color: Color.fromRGBO(37, 78, 218, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
