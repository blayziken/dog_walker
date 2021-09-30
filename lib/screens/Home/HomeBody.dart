import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
// import 'dart:convert';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var result;

  Future getDetails() async {
    result = rootBundle.loadString('data.json');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        height: media.height,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Explore dog walkers',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  child: Container(
                    height: 100,
                    width: media.width * 0.3,
                    color: Colors.orangeAccent,
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            'Book a walk',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                // TODO: CHANGE SETTINGS ICON
                suffixIcon: Icon(Icons.settings),
                labelText: 'Kiyv, Ukraine',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Near you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                InkWell(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // ListView.separated(
            //   shrinkWrap: true,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return AspectRatio(
            //       aspectRatio: 0.9 / 1,
            //       child: Column(
            //         children: [
            //           Expanded(
            //             child: GestureDetector(
            //               child: Container(
            //                 color: Colors.grey,
            //                 child: ClipRRect(
            //                   child: Image(
            //                     image: NetworkImage(''),
            //
            //                     // snackBestImages[index],
            //                     fit: BoxFit.none,
            //                   ),
            //                   borderRadius: BorderRadius.circular(30),
            //                 ),
            //               ),
            //               onTap: () {},
            //             ),
            //           ),
            //           SizedBox(height: 15),
            //           Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 16),
            //             child: Row(
            //               children: [
            //                 Column(
            //                   children: [
            //                     Text(
            //                       details[0][index]['name'], // 'Mason York',
            //                       style: TextStyle(
            //                         fontSize: 18,
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     Row(
            //                       children: [
            //                         Icon(Icons.location_on_outlined),
            //                         Text(
            //                           '7 km from you',
            //                           style: TextStyle(
            //                             fontSize: 15,
            //                             fontWeight: FontWeight.bold,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //                 Container(
            //                   height: 70,
            //                   width: 100,
            //                   child: Center(
            //                     child: Text(
            //                       '\$3/h',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 15,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            //   separatorBuilder: (context, _) => SizedBox(
            //     width: 17,
            //   ),
            //   itemCount: 5,
            // ),
            SizedBox(height: 20),
            // FutureBuilder(
            //   builder: (context, snapp) {
            //     if (snapp.connectionState == ConnectionState.none && snapp.hasData == null) {
            //       return Container(
            //         height: 100,
            //         width: 900,
            //         color: Colors.green,
            //         child: Center(
            //           child: CircularProgressIndicator(
            //             backgroundColor: Colors.blue,
            //           ),
            //         ),
            //       );
            //     }
            //     return ListView.builder(
            //       itemCount: result.data!.length,
            //       itemBuilder: (context, index) {
            //         return Column(
            //           children: [
            //             Expanded(
            //               child: GestureDetector(
            //                 child: Container(
            //                   color: Colors.grey,
            //                   child: ClipRRect(
            //                     child: Image(
            //                       image: NetworkImage(result[0][index]['image']),

            //                       // snackBestImages[index],
            //                       fit: BoxFit.none,
            //                     ),
            //                     borderRadius: BorderRadius.circular(30),
            //                   ),
            //                 ),
            //                 onTap: () {},
            //               ),
            //             ),
            //             SizedBox(height: 15),
            //             Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 16),
            //               child: Row(
            //                 children: [
            //                   Column(
            //                     children: [
            //                       Text(
            //                         result[0][index]['name'], // 'Mason York',
            //                         style: TextStyle(
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(Icons.location_on_outlined),
            //                           Text(
            //                             result[0][index]['location'],
            //                             style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold,
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                   Container(
            //                     height: 70,
            //                     width: 100,
            //                     child: Center(
            //                       child: Text(
            //                         result[0][index]['rate'],
            //                         style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 15,
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         );
            //       },
            //     );
            //   },
            //   future: getDetails(),
            // ),
            SizedBox(height: 20),
            Divider(height: 5),

            SizedBox(height: 20),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Suggested',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                InkWell(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 10),

            // FutureBuilder(
            //   builder: (context, snapp) {
            //     if (snapp.connectionState == ConnectionState.none &&
            //         snapp.hasData == null) {
            //       return Container(
            //         height: 100,
            //         width: 900,
            //         color: Colors.green,
            //         child: Center(
            //           child: CircularProgressIndicator(
            //             backgroundColor: Colors.blue,
            //           ),
            //         ),
            //       );
            //     }
            //     return ListView.builder(
            //       itemCount: result.data!.length,
            //       itemBuilder: (context, index) {
            //         return Column(
            //           children: [
            //             Expanded(
            //               child: GestureDetector(
            //                 child: Container(
            //                   color: Colors.grey,
            //                   child: ClipRRect(
            //                     child: Image(
            //                       image: NetworkImage(result[0][index]['image']),
            //
            //                       // snackBestImages[index],
            //                       fit: BoxFit.none,
            //                     ),
            //                     borderRadius: BorderRadius.circular(30),
            //                   ),
            //                 ),
            //                 onTap: () {},
            //               ),
            //             ),
            //             SizedBox(height: 15),
            //             Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 16),
            //               child: Row(
            //                 children: [
            //                   Column(
            //                     children: [
            //                       Text(
            //                         result[0][index]['name'], // 'Mason York',
            //                         style: TextStyle(
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(Icons.location_on_outlined),
            //                           Text(
            //                             result[0][index]['location'],
            //                             style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold,
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                   Container(
            //                     height: 70,
            //                     width: 100,
            //                     child: Center(
            //                       child: Text(
            //                         result[0][index]['rate'],
            //                         style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 15,
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         );
            //       },
            //     );
            //   },
            //   future: getDetails(),
            // ),
          ],
        ),
      ),
    );
  }
}
