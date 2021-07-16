import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(EvaIcons.paperPlaneOutline, color: Colors.white, size: 20),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Service',
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
                ),
              ],
            )),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.flight_land_outlined,
                            size: 30,
                          ),
                          Text('Flights')
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
