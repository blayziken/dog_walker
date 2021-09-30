import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List messages = [
    Container(
      height: 400,
      width: 500,
      color: Colors.deepOrangeAccent,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Hey, Alex! Nice to meet you! I\'d like to hire a walker and you\'re perferct one for me. Can you help me out?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: media.height,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back, size: 25),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(''),
                ),
                Column(
                  children: [
                    Text(
                      'Alex Murray',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.green,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Online',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.phone, size: 30),
              ],
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.teal,
              height: 800,
              child: ListView(
                reverse: true,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                children: [
                  Container(
                    height: 400,
                    width: 500,
                    color: Colors.deepOrangeAccent,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Hey, Alex! Nice to meet you! I\'d like to hire a walker and you\'re perferct one for me. Can you help me out?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            _sendMessageTextField(),
          ],
        ),
      ),
    );
  }

  Widget _sendMessageTextField() {
    return TextFormField(
      onFieldSubmitted: (value) {
        print('aaaaaaaaaaa');
        print(value);
      },
      decoration: InputDecoration(
        labelText: 'Aa',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class MessageSample extends StatelessWidget {
  final String text;

  const MessageSample({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      color: Colors.deepOrangeAccent,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
