import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/widgets/buttons.dart';

class WalkerDetailScreen extends StatefulWidget {
  static const routeName = '/walker-detail';

  final String name;
  final String rate;
  final String image;

  const WalkerDetailScreen({
    Key? key,
    this.name = "",
    this.rate = "",
    this.image = "",
  }) : super(key: key);

  @override
  State<WalkerDetailScreen> createState() => _WalkerDetailScreenState();
}

class _WalkerDetailScreenState extends State<WalkerDetailScreen> {
  Widget TabDetail = About2();
  int currentState = 0;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          child: Container(
            height: 600,
            width: media.width,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/images/IMAGE77.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 550,
            width: media.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      widget.name,
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '${widget.rate.substring(0, 1)}\$',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/hr',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RowSeperator(),
                        RichText(
                          text: TextSpan(
                            text: '10',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' km',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RowSeperator(),
                        Row(
                          children: [
                            Text(
                              '4.4 ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        RowSeperator(),
                        RichText(
                          text: TextSpan(
                            text: '450',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' walks',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
                            height: 50,
                            width: 140, //media.width * 0.3,

                            decoration: BoxDecoration(
                              color: currentState == 0 ? Colors.black : Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'About',
                                style: TextStyle(
                                  color: currentState == 0 ? Colors.white : Colors.grey[400],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentState = 0;
                              TabDetail = About();
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            height: 50,
                            width: 140, //media.width * 0.3,

                            decoration: BoxDecoration(
                              color: currentState == 1 ? Colors.black : Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Location',
                                style: TextStyle(
                                  color: currentState == 1 ? Colors.white : Colors.grey[400],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentState = 1;
                              TabDetail = Location();
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            height: 50,
                            width: 140, //media.width * 0.3,

                            decoration: BoxDecoration(
                              color: currentState == 2 ? Colors.black : Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Reviews',
                                style: TextStyle(
                                  color: currentState == 2 ? Colors.white : Colors.grey[400],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentState = 2;

                              TabDetail = Reviews();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                TabDetail,
                SizedBox(height: 20),
                Center(
                  child: SubmitButton(
                    text: 'Check schedule',
                    onPressed: () {
                      Navigator.pushNamed(context, '/chat-screen');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: media.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white38, // white60,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: InkWell(
                        child: Icon(
                          Icons.cancel,
                          size: 25,
                          color: Colors.white.withOpacity(0.7),
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  // Spacer(),
                  // SizedBox(width: 80),
                  Container(
                    height: 55,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Verified',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.check_box_rounded, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }

  Widget RowSeperator() {
    return Column(
      children: [
        SizedBox(width: 20),
        Container(width: 1, height: 15, color: Colors.grey),
      ],
    );
  }

  Widget About() {
    return Padding(
      padding: EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '30 years',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experience',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '11 months',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Alex has loved since childhood. He is currently a veterinary student. Visit the dog shelter we...',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Read more',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget Location() {
    return Padding(
        padding: EdgeInsets.all(17.0),
        child: Center(
          child: Text(
            'Location',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }

  Widget Reviews() {
    return Padding(
        padding: EdgeInsets.all(17.0),
        child: Center(
          child: Text(
            'Reviews',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}

class About2 extends StatelessWidget {
  const About2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '30 years',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experience',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '11 months',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Alex has loved since childhood. He is currently a veterinary student. Visit the dog shelter we...',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Read more',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
