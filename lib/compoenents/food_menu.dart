import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  final int rating = 5;

  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Card(
                  shape: CircleBorder(),
                  elevation: 5,
                  shadowColor: Colors.transparent,
                  // color: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/food_banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Card(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.grey,
                  elevation: 5,
                  shadowColor: Colors.black,
                  shape: StadiumBorder(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Container(
                          // padding: EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage('assets/chicken.jpg'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        // color: Colors.deepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Roasted Chicken',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Available',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black),
                            ),
                            Container(
                              width: 200,
                              // color: Colors.yellow,
                              margin: EdgeInsets.only(right: 10),
                              child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                itemSize: 24,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rate) {
                                  print("Rating: $rate");
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          // color: Colors.yellow,
                          padding: EdgeInsets.only(right: 20),
                          child: const Text(
                            "  \$${14}",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
