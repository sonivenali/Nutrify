import 'package:flutter/material.dart';
import 'package:flutter_number_picker/res.dart';
import 'package:nutrify/models/result.dart';
import 'package:nutrify/service/services.dart';

class ResultScreen extends StatefulWidget {
  final String query;

  ResultScreen(this.query);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final service = Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<Result>(
          future: service.getResult(widget.query),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      color: Colors.black38,
                      child: Row(
                        children: [
                          Image.asset("assets/images/calorie.png",
                              height: 50, width: 50),
                        ],
                      ),
                    ),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Something went wrong!"),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
