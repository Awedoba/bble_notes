import 'package:bble_notes/models/note_model.dart';
import 'package:bble_notes/screens/create_point_screen.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/point.dart';
import 'package:bble_notes/widgets/verses.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  final Note note;
  NoteScreen({this.note});
  // NoteScreen({Key key}) : super(key: key);

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 213, 46),
          title: Text(widget.note.title),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Verses(
                verses: widget.note.verses,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Points(
                  points: widget.note.points,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 50.0,
            color: Color.fromARGB(255, 255, 213, 46),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: CreatePoint(),
                  );
                });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
          child: Container(
            height: MediaQuery.of(context).size.height / 10.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: shadow,
                  spreadRadius: 5.0,
                  // offset: Offset(1, 0),
                )
              ],
              color: white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widget.note.categories.map((category) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
