// ignore_for_file: public_member_api_docs, sort_constructors_first
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Expanded(
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

                // description
              ],
            )),
          )
        ],
      ),
    );
  }
}
