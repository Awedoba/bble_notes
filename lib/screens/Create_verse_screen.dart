import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreateVerse extends StatefulWidget {
  CreateVerse({Key key}) : super(key: key);

  @override
  _CreateVerseState createState() => _CreateVerseState();
}

class _CreateVerseState extends State<CreateVerse> {
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
                "Add New Verse",
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
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                labelText: 'Enter Point',
                focusColor: primary,
                fillColor: primary,
                // filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: "Close",
                  onPressed: () {},
                ),
                CustomButton(
                  buttonText: "Save",
                  color: primary,
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
