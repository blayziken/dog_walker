import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:test_app/models/Walkers.dart';
// import 'dart:convert';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final DogWalker dogWalker = DogWalker();
  var result;

  Future getDetails() async {
    result = rootBundle.loadString('data.json');
    return result;
  }

  Widget SearchField() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextFormField(
          style: TextStyle(
            fontSize: 25.0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.location_on_outlined),
            // TODO: CHANGE SETTINGS ICON
            suffixIcon: Icon(Icons.settings_voice),
            hintText: 'Kiyv, Ukraine',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 25.0,
              // fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 30, left: 18.0, right: 18.0),
        child: Container(
          height: media.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                        ),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        'Explore dog walkers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: media.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.orange,
                            Colors.deepOrangeAccent,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Book a walk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(height: 30),
              SearchField(),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Near you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                height: 250,
                color: Colors.teal,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 0.9 / 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                color: Colors.grey,
                                child: ClipRRect(
                                  child: Image(
                                    image: AssetImage('${walkers[index].image}'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      walkers[index].name, // 'Mason York',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 15,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          walkers[index].location,
                                          style: TextStyle(
                                            fontSize: 15,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 30,
                                  width: 50,
                                  color: Colors.black,
                                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    ),
                                  child: Center(
                                    child: Text(
                                      '\$${walkers[index].rate}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, _) => SizedBox(
                    width: 5,
                  ),
                  itemCount: walkers.length,
                ),
              ),
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
                      fontSize: 50,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
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
      ),
    );
  }
}
