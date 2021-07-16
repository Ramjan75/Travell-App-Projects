import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Container(
          height: 55,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.30),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintText: 'search',
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
