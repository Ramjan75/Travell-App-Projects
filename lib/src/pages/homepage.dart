import 'package:ecommerce_app/src/components/bannerComponent.dart';
import 'package:ecommerce_app/src/components/catagoryComponent.dart';
import 'package:ecommerce_app/src/components/searchComponent.dart';
import 'package:ecommerce_app/src/components/vivagComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        leading: Icon(
          Icons.grid_view,
          color: Colors.white70,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
            ),
            Icon(
              Icons.location_on,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Lakshmipur,BD',
              style: GoogleFonts.lato(
                color: Colors.grey.withOpacity(.50),
                fontSize: 17,
              ),
            ),
            Spacer(),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/img/man_vec.png',
                  height: 30,
                  width: 30,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SearchComponent(),
            BannerComponent(),
            CategoryComponent(),
            VivagComponent(),
          ],
        ),
      ),
    );
  }
}
