import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/constants.dart';

class GroupChatPage extends StatefulWidget {
  const GroupChatPage({super.key});

  @override
  State<GroupChatPage> createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: false,
        title: Text("Saheliyaan".tr , style: const TextStyle(fontSize: 18,),),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "View Group Members",
                  child: Text("View Group Members"),
                ),
                const PopupMenuItem(
                  value: "Media, links, and docs",
                  child: Text("Media, links, and docs"),
                ),
                const PopupMenuItem(
                  value: "Mute notifications",
                  child: Text("Mute notifications"),
                ),
                const PopupMenuItem(
                  value: "Dissapearing messages",
                  child: Text("Dissapearing messages"),
                ),
                const PopupMenuItem(
                  value: "More",
                  child: Text("More"),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
