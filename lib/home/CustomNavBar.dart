import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mountain_trip/theme.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.home_outlined),
                    color: kTextColor,
                    onPressed: () {}),
                Text('Home',
                    style: GoogleFonts.roboto().copyWith(color: kTextColor))
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.location_on_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.map_outlined), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.person_outline_outlined), onPressed: () {})
        ],
      ),
    );
  }
}
