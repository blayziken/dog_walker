import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'chat_messages.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 18.0, right: 18.0),
        child: Container(
          height: media.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chat',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 20),
              SearchField(),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 10),
              Container(
                height: media.height * 0.68,
                width: media.width,
                // color: Colors.teal,
                child: ListView(
                  children: [
                    ChatBubble(
                      name: 'Will Knowles',
                      message: 'Hey! How\'s your dog?. 1 min',
                      image: 'assets/images/pham.png',
                      unRead: Colors.red,
                    ),
                    Divider(thickness: 2),
                    ChatBubble(
                      name: 'Ryan Bond',
                      message: 'Let\'s go out!. 5h',
                      image: 'assets/images/vicky.png',
                      unRead: Colors.transparent,
                    ),
                    Divider(thickness: 2),
                    ChatBubble(
                      name: 'Sirena Paul',
                      message: 'Hey! Long time no see?. 1 min',
                      image: "assets/images/Unsplash.png",
                      unRead: Colors.red,
                    ),
                    Divider(thickness: 2),
                    ChatBubble(
                      name: 'Matt Chapman',
                      message: 'You fed the dog?. 6h',
                      image: 'assets/images/ben.png',
                      unRead: Colors.transparent,
                    ),
                    Divider(thickness: 2),
                    ChatBubble(
                      name: 'Laura Pierce',
                      message: 'How are you doing?. 7h',
                      image: 'assets/images/Frame33553.png',
                      unRead: Colors.transparent,
                    ),
                    Divider(thickness: 2),
                    ChatBubble(
                      name: 'Hazel Reed',
                      message: 'Hey! Long time no see. 5h',
                      image: "assets/images/Unsplash.png",
                      unRead: Colors.transparent,
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
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.settings),
            hintText: 'Search',
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
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.name,
    required this.message,
    required this.image,
    required this.unRead,
  }) : super(key: key);

  final String name, message, image;
  final Color unRead;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        height: 100,
        width: media.width,
        child: Padding(
          padding: EdgeInsets.only(top: 18.0, bottom: 18, right: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
                // backgroundColor: Colors.black,

                backgroundImage: AssetImage(image),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 7,
                backgroundColor: unRead,
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      },
    );
  }
}
