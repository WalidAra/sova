import 'package:flutter/material.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              'New Password',
              style: TextStyle(
                fontFamily: 'Epilogue',
                fontSize: 25,
              ),
            ),
            SizedBox(height: 15),
            Text('Enter a new password'),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Must be 8 characters or more',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Repeat Password',
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Repeat the password again',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
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
                onPressed: () {},
                child: Text(
                  "Save New  Password",
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
