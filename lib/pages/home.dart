import 'package:flutter/material.dart';
import 'package:social_media_project/pages/chats.dart';
import 'package:social_media_project/pages/notifications.dart';
import 'package:social_media_project/utils/data.dart';
import 'package:social_media_project/widgets/post_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Feeds",
            style: TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_active_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chats()),
                );
              },
            ),
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            Map post = posts[index];
            return PostItem(
              img: post['img'],
              name: post['name'],
              dp: post['dp'],
              time: post['time'],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
