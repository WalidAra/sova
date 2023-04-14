import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Sova extends StatefulWidget {
  const Sova({super.key});

  @override
  State<Sova> createState() => _SovaState();
}

class _SovaState extends State<Sova> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "sova",
              style: TextStyle(
                  color: Color.fromRGBO(37, 78, 218, 1),
                  fontSize: 80,
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
