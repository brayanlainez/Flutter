import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  static final pageName = 'avatar';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Avatar Page'),
        actions: <Widget>[  
          Container(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753__340.jpg'),
              backgroundColor: Colors.transparent,
              radius: 23.0,
              ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10), 
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('Texto'),
            )
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753__340.jpg'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}