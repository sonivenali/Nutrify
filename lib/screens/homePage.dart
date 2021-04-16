import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:numberpicker/numberpicker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              bottom: 4,
              child: Container(width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/bottom_image2.png"))),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 80),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      hintText: 'Search for food',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 16,
                ),
                child: Text(
                  "Quantity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              CustomNumberPicker(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    side: BorderSide(width: 2.0, color: Colors.white)),
                valueTextStyle: TextStyle(fontSize: 20, color: Colors.black),
                initialValue: _currentValue,
                maxValue: 50,
                minValue: 1,
                step: 1,
                onValue: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
