import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken),
                  image: AssetImage("assets/images/backgroundimage.jpg")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 80),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  hintText: 'Search for food',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(40),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(40),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
