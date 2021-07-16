import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VivagComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Divison',
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 18,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .6,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text('Data'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
