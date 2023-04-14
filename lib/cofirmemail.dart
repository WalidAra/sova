import 'package:flutter/material.dart';
import 'codesent.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Text(
              'Input Token',
              style: TextStyle(fontFamily: 'Epilogue', fontSize: 20),
            ),
            SizedBox(height: 18),
            Container(
              width: 230,
              child: Text(
                  'Enter the token you received to reset your password.',
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 56,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: SizedBox(
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
                  child: Text("Log in"),
                ),
              ),
            ),
            SizedBox(height: 35),
            Text('Didn’t receive an email?'),
            SizedBox(height: 25),
            Text(
              'Resend',
              style: TextStyle(
                color: Color.fromRGBO(37, 78, 218, 1),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
