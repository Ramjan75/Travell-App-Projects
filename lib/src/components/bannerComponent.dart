import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class BannerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                        width: 360,
                        decoration: BoxDecoration(
                          color: HexColor('#1D2026'),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img/coxsbazar.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 30,
                              right: 30,
                              child: Container(
                                height: 130,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: HexColor('#1D2026'),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 20,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'CoxsBazar, Sea-Beach',
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 50,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'CoxsBazar, Chittagong',
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white
                                                        .withOpacity(.90),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            EvaIcons.heart,
                                            color: Colors.orangeAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '30',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            EvaIcons.messageSquareOutline,
                                            color: Colors.orangeAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '4',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Divider(
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
