import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/widgetsa.dart';

class TestWelcomeScreen extends StatelessWidget {
  const TestWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: media.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black, //.withOpacity(1),
            image: DecorationImage(
              image: AssetImage('assets/onboard.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.red,
                        child: Icon(
                          Icons.device_hub_sharp,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'WOO\nDOG',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
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
              SizedBox(height: 50),
              Text(
                'Too tired to walk your dog?\nLet\'s help you!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SubmitButton(
                text: 'Join our community',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Already a member?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
