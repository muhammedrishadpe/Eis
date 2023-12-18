// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eis/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/Eis.dart';

class FoodDetailPage extends StatefulWidget {
  final Eis eis;

  const FoodDetailPage({
    Key? key,
    required this.eis,
  }) : super(key: key);

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
// quantitiy
  int quantityCount = 0;

// decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

// increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // Listview of food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  // image
                  Image.asset(
                    widget.eis.imagePath,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // rating
                  Row(
                    children: [
                      // star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      // rating number
                      Text(
                        widget.eis.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // food name
                  Text(
                    widget.eis.name,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // description
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin nibh sit amet commodo nulla facilisi. A iaculis at erat pellentesque adipiscing commodo elit. Amet purus gravida quis blandit turpis cursus in hac. Lacus viverra vitae congue eu consequat.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                // price + quantity
                Row(
                  children: [
                    // price
                    Text(
                      "\$" + widget.eis.price,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),

                    //quantity

                    Row(
                      children: [
                        // minus button
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.remove,
                            ),
                            color: Colors.white,
                            onPressed: decrementQuantity,
                          ),
                        )
                        // quantity button
                        ,
                        Text(
                          quantityCount.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        //plus button

                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                            ),
                            color: Colors.white,
                            onPressed: incrementQuantity,
                          ),
                        )
                      ],
                    )
                  ],
                ),

                // add to cart button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
