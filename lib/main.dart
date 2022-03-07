import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        quoteText: 'Be yourself; Everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        author: 'Oscar Wilde',
        quoteText: 'The truth is rarely pure and never simple'),
    Quote(quoteText: 'I have nothing to declare except my genius')
  ];
  var number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes!'),
      ),
      body: Column(
        children: quotes.map((e) {
          return QuoteCard(
            quote: e,
            passedFunction: (){
              setState(() {
                quotes.remove(e);
              });
            }
          );
        }).toList(),
      ),
    );
  }
}


