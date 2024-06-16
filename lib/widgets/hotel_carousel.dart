
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:wild_route/models/hotel_model.dart';
// class HotelCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Text(
//                 'Destinations',
//                 style: TextStyle(
//                   color: Colors.white70,
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1.5),
//               ),
//               Text('See All',
//                 style: TextStyle(
//                   color: Theme.of(context).primaryColor,
//                   fontSize: 12.0,
//                   fontWeight: FontWeight.w600,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: 270.0,

//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: hotels.length,
//             itemBuilder: (BuildContext context, int index){
//               Hotel hotel = hotels[index];
//               return Container(
//                 margin: EdgeInsets.all(10.0),
//                 width: 240.0,
//                 child: Stack(
//                   alignment: Alignment.topCenter,
//                   children: <Widget>[
//                     Positioned(
//                       bottom:15.0,
//                       child: Container(
//                         height: 120.0,
//                         width: 240.0,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,

//                             children: <Widget>[
//                               Text(
//                                 hotel.name,
//                                 style: TextStyle(
//                                   color: Colors.white70,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w600,
//                                   letterSpacing: 1.2,
//                                 ),
//                               ),
//                                                           ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20.0),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black,
//                             offset: Offset(0.0, 2.0),
//                             blurRadius: 6.0,
//                           ),
//                         ],
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10.0),
//                         child: Image(
//                           height: 180.0,
//                           width: 280.0,
//                           image: AssetImage(hotel.imageUrl),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:wild_route/models/hotel_model.dart';
// import 'package:wild_route/widgets/hotelpage.dart'; // Import the HotelDetailPage

// class HotelCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Text(
//                 'Destinations',
//                 style: TextStyle(
//                   color: Colors.white70,
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1.5),
//               ),
//               Text('See All',
//                 style: TextStyle(
//                   color: Theme.of(context).primaryColor,
//                   fontSize: 12.0,
//                   fontWeight: FontWeight.w600,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: 270.0,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: hotels.length,
//             itemBuilder: (BuildContext context, int index) {
//               Hotel hotel = hotels[index];
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => HotelDetailPage(imageUrl: hotel.imageUrl),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   margin: EdgeInsets.all(10.0),
//                   width: 240.0,
//                   child: Stack(
//                     alignment: Alignment.topCenter,
//                     children: <Widget>[
//                       Positioned(
//                         bottom: 15.0,
//                         child: Container(
//                           height: 120.0,
//                           width: 240.0,
//                           decoration: BoxDecoration(
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: <Widget>[
//                                 Text(
//                                   hotel.name,
//                                   style: TextStyle(
//                                     color: Colors.white70,
//                                     fontSize: 22.0,
//                                     fontWeight: FontWeight.w600,
//                                     letterSpacing: 1.2,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20.0),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black,
//                               offset: Offset(0.0, 2.0),
//                               blurRadius: 6.0,
//                             ),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10.0),
//                           child: Image(
//                             height: 180.0,
//                             width: 280.0,
//                             image: AssetImage(hotel.imageUrl),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wild_route/models/hotel_model.dart';
import 'package:wild_route/widgets/hotelpage.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Destinations',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 270.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HotelDetailPage(hotel: hotel),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 240.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                hotel.name,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            height: 180.0,
                            width: 280.0,
                            image: AssetImage(hotel.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
