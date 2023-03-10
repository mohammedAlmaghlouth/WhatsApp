import 'package:flutter/material.dart';
import 'package:whastapp/Widgets/both/chat_list.dart';

import '../Widgets/mobile/input_chat_mobile.dart';
import '../data/colors.dart';

class MobileChatPage extends StatelessWidget {
  final String userName;
  final String userPhoto;
  const MobileChatPage(
      {super.key, required this.userName, required this.userPhoto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width * 0.25,
          leading: Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(userPhoto),
                  radius: 20,
                ),
              ],
            ),
          ),
          title: Text(userName),
          //centerTitle: true,
          backgroundColor: appBarColor,
          // end of chat profile bar icons
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgroundImage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: const [
              ChatList(),
              InputChatMobile(),
            ],
          ),
        ));
  }
}
