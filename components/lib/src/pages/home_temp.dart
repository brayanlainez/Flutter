import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomePageTemp extends StatelessWidget {
  final items = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Random Words extension') ),
      // body: ListView(children: _crearItems()),
      // body: ListView(children: _crearItemsCorto()),
      body: RandomWords(),
    );
  }
                
  // List<Widget> _crearItems() {
  //   List<Widget> list = new List<Widget>();
  //   for (String item in items) {
  //     list..add(ListTile(title: Text(item)))..add(Divider());
  //   }
  //   return list;
  // }
    
  // List<Widget> _crearItemsCorto() {
  //   return items.map((item){
  //     return Column(
  //       children: <Widget>[
  //         ListTile(
  //           title: Text(item), 
  //           subtitle: Text('Cualquier cosa!'),
  //           leading: Icon(Icons.ac_unit),
  //           trailing: Icon(Icons.keyboard_arrow_right),
  //           onTap: (){},
  //         ),
  //         Divider(
  //           color: Color.fromARGB(255, 200, 100, 200),
  //           height: 0,
  //         )
  //       ],
  //     );
  //   }).toList();
  // }
    
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);
  
  @override
  Widget build(BuildContext context) {
    print(_suggestions);
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length-19056) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}