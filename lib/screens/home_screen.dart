import 'package:bble_notes/screens/create_note_screen.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/category_selector.dart';
import 'package:bble_notes/widgets/notes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Bible Study',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          CategorySelector(),
          Notes(),
        ],
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
                child: CreateNote(),
              );
            },
          );
        },
      ),
    );
  }
}
