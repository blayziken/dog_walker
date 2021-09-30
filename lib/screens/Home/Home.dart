import 'package:flutter/material.dart';
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
    ChatBody(),
    ProfileBody(),
  ];

  //
  //

  // var data = json.decode(await getJson());

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future<String> getJson() {
  //     return rootBundle.loadString('data.json');
  //   }
  // }

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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: currentState == 0 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 0;
                        });
                      },
                      iconSize: 30,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      color: currentState == 1 ? Colors.black : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentState = 1;
                        });
                      },
                      iconSize: 30,
                    ),
                    Text(
                      'Moments',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
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
                      iconSize: 30,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
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
                      iconSize: 30,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
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

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class MomentsBody extends StatelessWidget {
  const MomentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
    );
  }
}
