// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eis/models/Eis.dart';
import 'package:google_fonts/google_fonts.dart';

class IceTile extends StatelessWidget {
  final Eis eis;
  const IceTile({
    Key? key,
    required this.eis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(
        left: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // image
          Image.asset(
            eis.imagePath,
            height: 140,
          ),
          //text
          Text(
            eis.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          // price + rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Text(
                  "\$" + eis.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),

                // rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      eis.rating,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
