import 'package:bble_notes/models/damy_data.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  CreateNote({Key key}) : super(key: key);

  @override
  _CreateNoteState createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
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
                "Add New Note",
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
                labelText: 'Enter Title',
                focusColor: primary,
                fillColor: primary,
                // filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Choose Categories",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: primary),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              // color: black,
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: shadow,
                          spreadRadius: 1.5,
                        )
                      ],
                      color: primary,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                      child: Text(categories[index].name),
                    ),
                  );
                },
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
