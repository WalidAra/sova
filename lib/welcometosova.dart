import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';

class WelcomeToSova extends StatefulWidget {
  const WelcomeToSova({super.key});

  @override
  State<WelcomeToSova> createState() => _WelcomeToSovaState();
}

class _WelcomeToSovaState extends State<WelcomeToSova> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "sova",
                  style: TextStyle(
                    color: Color.fromRGBO(37, 78, 218, 1),
                    fontSize: 80,
                    fontFamily: 'Epilogue',
                  ),
                ),
                Text(
                  '.',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 80,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('images/Frame.png'),
              width: 230,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to Sova",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Epilogue',
                fontSize: 25,
                color: Color.fromRGBO(37, 78, 218, 1),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Get comparative estimation on what’s the industry norm of the real states.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(16.0),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  elevation: MaterialStateProperty.all<double>(0.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: Color.fromRGBO(37, 78, 218, 1),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color.fromRGBO(37, 78, 218, 1),
                    fontFamily: 'Epilogue',
                  ),
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
