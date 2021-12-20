import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Albert Einsten',
        text:
            'You have to learn the rules of the game. And then you have to play better than anyone else.'),
    Quote(
        author: 'Albert Einstein',
        text: 'I have no special talent. I am only passionately curious.'),
    Quote(
        text:
            'Some are born great, some achieve greatness, and some have greatness thrust upon them.',
        author: 'William Shakespeare'),
    Quote(
        text:
            'When it is obvious that the goals cannot be reached, dont adjust the goals, adjust the action steps.',
        author: 'Confucius')
    // 'You have to learn the rules of the game. And then you have to play better than anyone else.',
    // 'Insanity: doing the same thing over and over again and expecting different results.',
    // 'Look deep into nature, and then you will understand everything better.'
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            // SizedBox(height: 8.0),
            // TextButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.delete),
            //     label: Text('delete quote'))
          ],
        ),
      ),
    );
  }

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
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
          //quotes.map returns an iterable
          //children property takes an iterable and returns a list
        ));
  }
}
