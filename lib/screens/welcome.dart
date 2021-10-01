import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/widgetsa.dart';
// import 'package:test_app/widgets/buttons.dart';
// import 'package:test_app/widgets/widgetsa.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: media.height * 0.75,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: AssetImage('assets/images/onboarding_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: media.height * 0.27,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.967),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Padding(
                  padding: EdgeInsets.all(35.0),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo_s.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'WOO\nDOG',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: media.height / 1.65,
                left: media.width / 3.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 7),
                    Container(
                      height: 3,
                      width: 12,
                      color: Colors.white,
                    ),
                    SizedBox(width: 7),
                    ImageNumber(
                      text: '2',
                      color: Colors.black,
                    ),
                    SizedBox(width: 7),
                    Container(
                      height: 3,
                      width: 12,
                      color: Colors.white,
                    ),
                    SizedBox(width: 7),
                    ImageNumber(
                      text: '3',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: media.height / 1.49,
                left: media.width / 10,
                child: Column(
                  children: [
                    Text(
                      'Too tired to walk your dog?\nLet\'s help you!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    SubmitButton(
                      text: 'Join our community',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                    ),
                    SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        text: 'Already a member?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 1,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign in',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
