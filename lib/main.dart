import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('hello'),
          TextButton(onPressed: (){},
              style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.teal,
      onSurface: Colors.grey,
    ),
    child: Text('click me'),
          ),
          Container(
            color:Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click '),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
