import 'package:bble_notes/models/damy_data.dart';
import 'package:bble_notes/models/note_model.dart';
import 'package:bble_notes/screens/note_screen.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  Notes({Key key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index) {
          Note note = notes[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => NoteScreen(note: note),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: shadow,
                            spreadRadius: 1.5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            note.title,
                            style: TextStyle(
                              color: primary,
                              fontSize: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  note.date,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                // ----------------------------------
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: note.categories.map((category) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          category.name,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                // ----------------------------------
                                // Text(note.categories[0].name),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
