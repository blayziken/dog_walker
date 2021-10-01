import 'package:flutter/material.dart';
import 'package:test_app/widgets/buttons.dart';

class WalkerDetailScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Container(
      height: media.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(''),
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.green,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Text(
                      'Verified',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.verified_user_sharp, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 120),
          Container(height: 100, width: 100, color: Colors.red),
          Container(
            width: double.infinity,
            color: Colors.deepOrange,
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Alex Murray',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'rate',
                            style: TextStyle(
                              fontSize: 20.0,
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
                        Container(width: 3, height: 10, color: Colors.black),
                        RichText(
                          text: TextSpan(
                            text: 'location',
                            style: TextStyle(
                              fontSize: 20.0,
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
                        Container(width: 3, height: 10, color: Colors.black),
                        Row(
                          children: [
                            Text(
                              '4.4',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Container(width: 3, height: 10, color: Colors.black),
                        RichText(
                          text: TextSpan(
                            text: '450',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'walks',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: media.width * 0.3,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'About',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  '30 years',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  '11 months',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
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
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Read more',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SubmitButton(
                      text: 'Check schedule',
                      onPressed: () {
                        // Navigator.pushNamed(context, routeName);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
