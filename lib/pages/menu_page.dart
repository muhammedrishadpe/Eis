import 'package:eis/components/button.dart';
import 'package:eis/models/Eis.dart';
import 'package:eis/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/Ice_tile.dart';
import 'food_details_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Eis menu
    List iceMenu = [
      Eis(
          name: "Dei Ners",
          price: "3.10",
          imagePath: "lib/images/ice-cream(1).png",
          rating: "4.9"),
      Eis(
          name: "Glolitti",
          price: "4.10",
          imagePath: "lib/images/ice-cream(2).png",
          rating: "5"),
      Eis(
          name: "Eis Fontanella",
          price: "4.30",
          imagePath: "lib/images/ice-cream(1).png",
          rating: "4.5"),
      Eis(
          name: "Leopold's",
          price: "3.85",
          imagePath: "lib/images/ice-cream(1).png",
          rating: "3.5"),
    ];

    // navigation to food item details page

    void navigateToFoodDetails(int index) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FoodDetailPage(
                    eis: iceMenu[index],
                  )));
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Koblenz',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //promo message
                    Text(
                      "32% Rabatt erhalten",
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // redeem button
                    MyButton(text: "einlösen", onTap: () {})
                  ],
                ),

                //image
                Image.asset('lib/images/ice-cream(1).png', height: 100),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Suche hier.."),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          // menu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: iceMenu.length,
              itemBuilder: (context, index) => IceTile(
                eis: iceMenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Image
                    Image.asset(
                      "lib/images/popsicle.png",
                      height: 60,
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          "Popsicle",
                          style: GoogleFonts.dmSerifDisplay(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // price
                        Text(
                          '\$21.00',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // heart
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
