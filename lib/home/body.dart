import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mountain_trip/models/mata_angin.dart';
import 'package:mountain_trip/models/mountain.dart';
import 'package:mountain_trip/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // clipBehavior: Clip.none,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            color: kPrimaryColor,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Ring Road Trip',
                    style: GoogleFonts.roboto(color: kTextColor)
                        .copyWith(fontSize: 28),
                  ),
                  Text(
                    'Route 1 Hringvour',
                    style: GoogleFonts.roboto(color: kTextColor)
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: 20,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ...List.generate(
                              dataMataAngin.length,
                              (index) => Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    dataMataAngin[index].name,
                                    style:
                                        GoogleFonts.roboto(color: Colors.amber)
                                            .copyWith(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    items: dataMountain
                        .map((image) => Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: AssetImage(image.image),
                                      fit: BoxFit.cover),
                                  boxShadow: [kDefaultShadow]),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
