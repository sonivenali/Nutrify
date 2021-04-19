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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            FutureBuilder<Result>(
                future: service.getResult(widget.query),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60, bottom: 10),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              widget.query,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            )),
                            buildResult("assets/images/calorie.png", "Calories",
                                snapshot.data.calories),
                            buildResult(
                                "assets/images/carb.png",
                                "Carb",
                                snapshot.data.totalDaily.cHOCDF.quantity
                                    .toString()),
                            buildResult(
                                "assets/images/fat.png",
                                "Fat",
                                snapshot.data.totalNutrients.fAT.quantity
                                    .toString()),
                            buildResult(
                                "assets/images/fiber.png",
                                "Fat",
                                snapshot.data.totalDaily.fIBTG.quantity
                                    .toString()),
                            buildResult(
                                "assets/images/nutrient.png",
                                "Nutrient",
                                snapshot.data.totalDaily.cA.quantity
                                    .toString()),
                            buildResult(
                                "assets/images/protien.png",
                                "Protien",
                                snapshot.data.totalDaily.pROCNT.quantity
                                    .toString()),
                            buildResult("assets/images/weighing.png", "Weight",
                                snapshot.data.totalWeight),
                          ],
                        ),
                      ),
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
            Positioned(
                bottom: 2,
                child: Image.asset(
                  "assets/images/bottom_art.png",
                  width: MediaQuery.of(context).size.width,
                )),
          ],
        ),
      ),
    );
  }

  Padding buildResult(String imageLink, name, result) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.cyanAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
              child: Image.asset(imageLink, height: 50, width: 50),
            ),
            Text(name),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(result),
            ),
          ],
        ),
      ),
    );
  }
}
