import 'package:flutter/material.dart';
import 'package:matchup/MatchUp_body.dart';
import 'package:matchup/chat_screen.dart';

class Insta extends StatefulWidget {
  @override
  InstaHome createState() {
    return new InstaHome();
  }
}
class InstaHome extends State<Insta> {

  final topBar = new AppBar(
    backgroundColor: new Color(0xFF3B5999),
    centerTitle: true,
    elevation: 0.5,
    //leading: new Icon(Icons.camera_alt),
    title: SizedBox(
         child:  Text('Matchup', style: new TextStyle(color: Colors.white.withOpacity(1.0)),) ),
  );

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
          bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (newIndex) =>
            setState(() {
              _currentIndex = newIndex;
            }),

        items:[
        new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home")
          //final blue backgroundColor
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.chat),
            title: new Text("Chat")
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.location_on),
            title: new Text("Explore")
        ),

        ],
      ),
      body: new IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          new InstaBody(),
          //new MapScreen(),
          new ChatScreen(),
        ],
      ),
    );
  }
}

