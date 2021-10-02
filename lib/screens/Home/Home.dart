import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/chat_screens/chats.dart';
import 'HomeBody.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentState = 0;

  List<Widget> widgets = [
    HomeBody(),
    MomentsBody(),
    Chats(),
    ProfileBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: Container(
          height: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Icon(Icons.home),
                      color: currentState == 0 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 0;
                        });
                      },
                      iconSize: 40,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentState == 0 ? Colors.black : Colors.grey,
                        fontSize: 15,
                        fontWeight: currentState == 0 ? FontWeight.w900 : FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Icon(Icons.person),
                      color: currentState == 1 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 1;
                        });
                      },
                      iconSize: 40,
                    ),
                    Text(
                      'Moments',
                      style: TextStyle(
                        color: currentState == 1 ? Colors.black : Colors.grey,
                        fontSize: 15,
                        fontWeight: currentState == 1 ? FontWeight.w900 : FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Icon(Icons.home),
                      color: currentState == 2 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 2;
                        });
                      },
                      iconSize: 40,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(
                        color: currentState == 2 ? Colors.black : Colors.grey,
                        fontSize: 15,
                        fontWeight: currentState == 2 ? FontWeight.w900 : FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Icon(Icons.person),
                      color: currentState == 3 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 3;
                        });
                      },
                      iconSize: 40,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: currentState == 3 ? Colors.black : Colors.grey,
                        fontSize: 15,
                        fontWeight: currentState == 3 ? FontWeight.w900 : FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: widgets[currentState],
    );
  }
}

class MomentsBody extends StatelessWidget {
  const MomentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Text(
          'Moments',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
