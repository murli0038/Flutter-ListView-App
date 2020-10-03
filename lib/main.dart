import 'package:flutter/material.dart';
import 'Quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<QuoteListClass> quote = [
    QuoteListClass(name: "This is 1st Quote !", Author: "1st Author"),
    QuoteListClass(name: "This is 2nd Quote !", Author: "2nd Author"),
    QuoteListClass(name: "This is 3rd Quote !", Author: "3rd Author"),
    QuoteListClass(name: "This is 4th Quote !", Author: "4th Author"),
  ];

  Widget quoteTamplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Quotes List"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote
            .map(
              (e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quote.remove(e);
                    });
                  }),
            )
            .toList(),
      ),
    );
  }
}
