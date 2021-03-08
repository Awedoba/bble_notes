import 'package:bble_notes/utilities/constants.dart';
import 'package:flutter/material.dart';

class ViewVerse extends StatefulWidget {
  final String verse;
  final String content;

  ViewVerse({this.verse, this.content});

  @override
  _ViewVerseState createState() => _ViewVerseState();
}

class _ViewVerseState extends State<ViewVerse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: primary,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                widget.verse,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.content,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
