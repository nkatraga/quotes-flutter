import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() passedFunction;
  QuoteCard({required this.quote, required this.passedFunction });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.quoteText),
            SizedBox(
              height: 5,
            ),
            Text(
              '- ${quote.author}',
              textAlign: TextAlign.right,
            ),
            Container(
              alignment: Alignment.topLeft,
                height: 30,
                padding: EdgeInsets.fromLTRB(1,1,2,3),
                //color: Colors.amber,
                child: TextButton(
                  //Execute the passed function when the button is pressed
                    onPressed: () => passedFunction(),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      minimumSize: Size(10,10)
                    ),
                    child: Text('Delete')
                ))
          ],
        ),
      ),
    );
  }
}