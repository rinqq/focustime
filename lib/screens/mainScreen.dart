// ignore_for_file: camel_case_types, file_names
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => mainScreeneState();
}

/* 
TODO: Header text and container styles (colors should change when session complate)
TODO: Button effect
TODO: Timer!
TODO: Better UI
TODO: Add counter calculation for session counts
*/

const Color red = Color(0xFFd95550);

class mainScreeneState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //* Head
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              //*Counter
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "#1",
                  style: GoogleFonts.coda(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white38),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Work Time",
                      style: GoogleFonts.creteRound(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Short Break",
                      style: GoogleFonts.creteRound(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white54),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Long Break",
                      style: GoogleFonts.creteRound(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white54),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //*Timer
            Container(
              padding: const EdgeInsets.only(top: 72),
              alignment: Alignment.center,
              child: Text(
                "25:00",
                style: GoogleFonts.coda(
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),

            //* Start Button
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 221, 217, 217),
                      offset: Offset(0, 7)),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 132,
              height: 56,
              margin: const EdgeInsets.only(top: 32),
              child: Container(
                alignment: Alignment.center,
                child: Material(
                  child: InkWell(
                    child: Text(
                      "start",
                      style: GoogleFonts.creteRound(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: red),
                    ),
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Developed & Designed",
                  style: GoogleFonts.syne(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "by Enis Günenç",
                  style: GoogleFonts.syne(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
