import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat-screen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageCtrl = TextEditingController();

  List messages = [
    'Hey, Alex! Nice to meet you! I\'d like to hire a walker and you\'re perferct one for me. Can you help me out?',
    'Okay, I\'m waiting or a call)',
  ];

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Container(
          height: media.height,
          width: media.width, // double.infinity,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: ChatAppBar()),
              SizedBox(height: 20),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10.0),
                  child: Container(
                    color: Colors.teal,
                    height: 800,
                    width: media.width,
                    child: ListView.separated(
                      // reverse: true,
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),

                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                // height: 140,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    messages[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // height: 140,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    'Hi! That\'s great! Let me give you a call and we\'ll discuss all the details',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: messages.length,
                      separatorBuilder: (BuildContext context, _) => SizedBox(
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Center(child: _sendMessageTextField())),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sendMessageTextField() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 17),
            Expanded(
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: messageCtrl,
                    textInputAction: TextInputAction.send,
                    // keyboardType: ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Aa',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 22.0,
                        fontWeight: FontWeight.normal,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    onFieldSubmitted: (value) {
                      messages.add(value);
                      messageCtrl.clear();
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 18),
      child: Row(
        children: [
          InkWell(child: Icon(Icons.arrow_back, size: 30), onTap: () => Navigator.pop(context)),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/IMAGE77.png"),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Alex Murray',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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
    );
  }
}
