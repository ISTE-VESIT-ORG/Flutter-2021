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
      body: Center(
        // child: Icon(
        //     Icons.airport_shuttle,
        //     color: Colors.lightBlue,
        //     size:50.0,
        // ),
      //   child: ElevatedButton(
      //     onPressed: () {
      //       print('you clicked me');
      //     },
      //     child: Text('click me'),
      //     style: ElevatedButton.styleFrom(
      //       primary: Colors.red,
      //       onPrimary: Colors.white,
      //     ),
      //   ),
      // ),
      // child:ElevatedButton.icon(
      //   onPressed: (){

      //   },
      //   icon: Icon(
      //     Icons.mail
      //   ),
      //   label: Text('mail me'),
      //   style: ElevatedButton.styleFrom(
      //       primary: Colors.red,
      //       onPrimary: Colors.white,
      //     ),
      // ),
      child:IconButton(
        onPressed: (){
            print('you clicked me');
        },
        icon: Icon(Icons.alternate_email),
        color: Colors.red,
      )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click '),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
