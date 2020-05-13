import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showCard = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: showCard ? _buildCard() : _buildStack(),),
      ),
    );
  }

  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('1625 Main Street',
            style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('My County, Vihiga'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('254(0)707 861420',
              style: TextStyle(fontWeight: FontWeight.w500),),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('kevinmulugu@gmail.com',
              style: TextStyle(fontWeight: FontWeight.w500),),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildStack() => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('images/pic.jpg'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
        child: Text(
          'Kevv Kevv',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      )
    ],
  );
}