import 'package:eis/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),

              //shop name
              Text(
                "EIS MAN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              //icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  "lib/images/ice-cream.png",
                  // width: 80,
                ),
              ),

              const SizedBox(height: 10),

              //title
              Text(
                "Spüren Sie den Geschmack der beliebtesten Eissorten von überall und jederzeit",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 36, color: Colors.white),
              ),

              const SizedBox(height: 10),
              // subtitle
              Text("", style: TextStyle(color: Colors.grey[300], height: 2)),
              const SizedBox(height: 25),
              // get started button
              MyButton(
                text: "Loslegen",
                onTap: () {
                  // go to menu page

                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ));
  }
}
