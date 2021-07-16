import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 20),
            child: Row(
              children: [
                Text(
                  'Popular Places',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Spacer(),
                Icon(EvaIcons.arrowForwardOutline,
                    color: Colors.white, size: 20)
              ],
            )),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(6.0),
                child: Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: HexColor('#1D2026'),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img/beach.jpeg',
                                fit: BoxFit.cover,
                                scale: 10,
                              )),
                          Text('Flights'),
                        ],
                      ),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
