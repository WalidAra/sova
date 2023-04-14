import 'package:flutter/material.dart';
import 'cofirmemail.dart';

class CodeSentPage extends StatefulWidget {
  const CodeSentPage({super.key});

  @override
  State<CodeSentPage> createState() => _CodeSentPageState();
}

class _CodeSentPageState extends State<CodeSentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/sentmessage.png'),
              width: 200,
            ),
            SizedBox(height: 50),
            Text(
              'Code Sent!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Epilogue',
                fontSize: 25,
                color: Color.fromRGBO(37, 78, 218, 1),
              ),
              // set text alignment to center
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center, // set text alignment to center
              text: TextSpan(
                children: [
                  // First half of the text, displayed in one font
                  TextSpan(
                    text: 'A six digits code has been sent to your email',
                    style: TextStyle(
                      fontFamily: 'Font1',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),

                  // Second half of the text, displayed in another font
                  TextSpan(
                    text: ' tusharmrian092@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Font2',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
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
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: Color.fromRGBO(37, 78, 218, 1),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Change Email",
                  style: TextStyle(
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
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
                    MaterialPageRoute(builder: (context) => VerifyEmail()),
                  );
                },
                child: Text("Submit Token"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
