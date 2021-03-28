import 'package:flutter/material.dart';
import 'package:start/quote.dart';
import 'package:start/quote_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: QuoteList(),
    );
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'No one can make you feel inferior without your consent.', text: 'Eleanor Roosevelt'),
    Quote(author: 'Not all those who wander are lost.', text: 'J. R. R. Tolkein'),
    Quote(author: 'A rose by any other name would smell as sweet.	', text: 'William Shakespeare'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}
