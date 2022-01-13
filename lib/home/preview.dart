import 'package:flutter/material.dart';
import 'package:mountain_trip/models/mountain.dart';

class Preview extends StatelessWidget {
  final Mountain mountain;

  int currentIndex = 0;
  Preview(this.mountain);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(mountain.image), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 200,
            child: Text(
              mountain.name,
              // style: blackFontStyle16,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 12),
          //   child: RatingStars(food.rate),
          // )
        ],
      ),
    );
    // return Row(
    //   children: [
    //     ...List.generate(
    //       dataMountain.length,
    //       (index) => Padding(
    //         padding: EdgeInsets.only(
    //           left: 20,
    //         ),
    //         child: Container(
    //           height: MediaQuery.of(context).size.height * 0.65,
    //           width: MediaQuery.of(context).size.width * 0.65,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //               image: DecorationImage(
    //                   image: AssetImage(dataMountain[index].image),
    //                   fit: BoxFit.cover),
    //               boxShadow: [kDefaultShadow]),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
