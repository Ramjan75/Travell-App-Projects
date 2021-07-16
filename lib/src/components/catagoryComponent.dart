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
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(6.0),
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset('assets/img/seaBeach.jpg'),
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
