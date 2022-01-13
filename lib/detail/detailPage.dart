import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mountain_trip/models/mountain.dart';
import 'package:mountain_trip/models/user.dart';
import 'package:mountain_trip/theme.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  // final Mountain mountain;

  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // dynamic argument = Get.arguments;
  // final Mountain mountain;

  // _DetailPageState(this.mountain);
  // List mountain = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      // body: Body(),
      body: Body1(
          // mountain: argument,
          ),
    );
  }

  AppBar buildAppBar({isTransparent = true, isFav = false, String title}) {
    return AppBar(
      backgroundColor: isTransparent ? Colors.transparent : Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isTransparent ? "" : title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          Get.back();
          // Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            setState(() {});
          },
        ),
      ],
    );
  }
}

class Body1 extends StatelessWidget {
  // final Mountain mountain;
  const Body1({Key key}) : super(key: key);
  // const Body1({Key key, this.mountain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Get.arguments['image']),
          ),
        ),
      ),
      Container(
          // height: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black87,
              ],
              stops: [0.0, 0.95],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '12º',
                      style: GoogleFonts.roboto().copyWith(
                          fontSize: 48,
                          color: kTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SW 5km/h',
                          style: GoogleFonts.roboto().copyWith(
                              fontSize: 24,
                              color: kTextColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '63.9830ºN,19.0670ºW',
                          style: GoogleFonts.roboto().copyWith(
                              fontSize: 14,
                              color: kTextColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 250),
                Text(
                  Get.arguments['name'],
                  style: GoogleFonts.roboto().copyWith(
                      color: kTextColor,
                      fontSize: 22,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SmoothStarRating(
                        allowHalfRating: true,
                        onRated: (v) {},
                        starCount: 5,
                        rating: 4.5,
                        size: 20.0,
                        isReadOnly: true,
                        defaultIconData: Icons.star_outline_rounded,
                        filledIconData: Icons.star_rounded,
                        halfFilledIconData: Icons.star_half_rounded,
                        color: kTextColor,
                        borderColor: kTextColor,
                        spacing: 0.0),
                    SizedBox(width: 10),
                    Text(
                      "4.5 Reviews",
                      style: GoogleFonts.roboto().copyWith(
                          color: kTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Difficulty',
                          style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '70%',
                          style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Distance',
                            style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal,
                            )),
                        SizedBox(height: 5),
                        Text(
                          '24 Km',
                          style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elevation',
                          style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3000 m',
                          style: GoogleFonts.roboto().copyWith(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  Get.arguments['desc'],
                  maxLines: 5,
                  style: GoogleFonts.roboto().copyWith(
                      color: kTextColor,
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 2,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Travelers(
                      users: topTravelers,
                    ),
                    Button(),
                  ],
                ),
                // SizedBox(height: 20),
              ],
            ),
          ))
    ]);
  }
}

class Button extends StatelessWidget {
  const Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      // width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        // color: kPrimaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: kPrimaryColor.withOpacity(0.8),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Start Route",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  final List<User> users;
  const Travelers({
    Key key,
    this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 40,
      child: Stack(
        children: [
          ...List.generate(
            users.length,
            (index) {
              totalUser++;
              return Positioned(
                left: (20 * index).toDouble(),
                child: buildTravelerFace(index),
              );
            },
          ),
          Positioned(
            left: (20 * totalUser).toDouble(),
            child: SizedBox(
              width: 35,
              height: 35,
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: 35,
        width: 35,
        fit: BoxFit.cover,
      ),
    );
  }
}
