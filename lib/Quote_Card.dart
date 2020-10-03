import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final QuoteListClass quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue[50],
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.name,
              style: TextStyle(fontSize: 20, color: Colors.grey[900]),
            ),
            SizedBox(height: 1.0),
            Text(quote.Author,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900])),
            SizedBox(height: 1.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text(
                  "Delete !",
                ))
          ],
        ),
      ),
    );
  }
}
