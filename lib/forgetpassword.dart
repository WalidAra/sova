import 'package:flutter/material.dart';
import 'codesent.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'Epilogue',
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text('Enter your email to receive a token'),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email here',
                border: OutlineInputBorder(),
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
                  "Submit",
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
