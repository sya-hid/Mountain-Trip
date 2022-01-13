import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mountain_trip/detail/detailPage.dart';
import 'package:mountain_trip/models/mata_angin.dart';
import 'package:mountain_trip/models/mountain.dart';
import 'package:mountain_trip/theme.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    // return Scaffold(
    //   extendBodyBehindAppBar: true,
    //   appBar: buildAppBar(isTransparent: true),
    //   body: BOdy1(),
    //   bottomNavigationBar: CustomNavBar(),
    // );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => BOdy1(), transition: Transition.fade),
        GetPage(
            name: '/detail',
            page: () => DetailPage(),
            transition: Transition.fadeIn),
      ],
    );
  }
}

class BOdy1 extends StatelessWidget {
  // int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kIconColor,
        ),
        Container(
          color: kPrimaryColor,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MataAngin(),
                Carousel(imgList: imgList),
              ],
            ),
            MenuHorizontal()
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ring Road Trip',
                  style: GoogleFonts.roboto(color: kIconColor)
                      .copyWith(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(
                'Route 1 Hringvegur',
                style: GoogleFonts.roboto(color: kIconColor)
                    .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MenuHorizontal extends StatelessWidget {
  const MenuHorizontal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -7),
                  blurRadius: 33,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: IconButton(
                icon: Icon(Icons.store_mall_directory_outlined),
                onPressed: () {}),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -7),
                  blurRadius: 33,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: IconButton(
                icon: Icon(Icons.sports_esports_outlined), onPressed: () {}),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -7),
                  blurRadius: 33,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: IconButton(
                icon: Icon(
                  Icons.pool_outlined,
                  color: kTextColor,
                ),
                onPressed: () {}),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -7),
                  blurRadius: 33,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child:
                IconButton(icon: Icon(Icons.rowing_outlined), onPressed: () {}),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -7),
                  blurRadius: 33,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: IconButton(
                icon: Icon(Icons.fastfood_outlined), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}

class MataAngin extends StatelessWidget {
  const MataAngin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ...List.generate(
              dataMataAngin.length,
              (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          dataMataAngin[index].name,
                          style: GoogleFonts.roboto(color: Color(0xFF696a6e))
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ))
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
    @required this.imgList,
  }) : super(key: key);

  final List imgList;
  // final Mountain mountain;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CarouselSlider(
            items: dataMountain.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/detail', arguments: [{
                          'image':imgUrl.image,
                          'name':imgUrl.name,
                          'desc':imgUrl.desc,
                        }]);
                        // Get.to(DetailPage(),
                        //     transition: Transition.fadeIn,
                        //     duration: Duration(seconds: 1));
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DetailPage(
                        //               mountain: imgUrl,
                        //             )));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                height:
                                    MediaQuery.of(context).size.height * 0.50,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(imgUrl.image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black,
                                    ],
                                    stops: [
                                      0.0,
                                      0.95,
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(imgUrl.name,
                                          style: GoogleFonts.roboto().copyWith(
                                              color: kIconColor, fontSize: 20)),
                                      SizedBox(height: 10),
                                      Text('Geothermal Oasisy',
                                          style: GoogleFonts.roboto().copyWith(
                                              color: kIconColor, fontSize: 14))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Distance to 180km',
                                    style: GoogleFonts.roboto()
                                        .copyWith(color: kTextColor),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: kTextColor,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.65,
              aspectRatio: 16 / 9,
              viewportFraction: 0.75,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              pageSnapping: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
