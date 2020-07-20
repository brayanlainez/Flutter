import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Card Page') ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
         ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.star, color: Colors.white),
            title: Text('Titulo', style: TextStyle(color:Colors.white)),
            subtitle: Text('Subtitulo', style: TextStyle(color:Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text( 'NO', style: TextStyle(color:Colors.white) ),
                color: Colors.red,
                onPressed: (){}, 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(width: 10.0),
              FlatButton(
                child: Text( 'SI', style: TextStyle(color:Colors.white) ), 
                color: Colors.green,
                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(width: 20.0),           
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753__340.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(image: NetworkImage('https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753__340.jpg')),
          Container(
            child: Text("Texto"),
            padding: EdgeInsets.all(10.0)
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}