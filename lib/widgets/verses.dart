import 'package:bble_notes/models/verse_model.dart';
import 'package:bble_notes/screens/view_verse_screen.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:bble_notes/models/damy_data.dart';
import 'package:flutter_picker_view/picker_view.dart';
import 'package:flutter_picker_view/picker_view_popup.dart';

class Verses extends StatefulWidget {
  final List<Verse> verses;
  final double size;
  Verses({this.verses, this.size = 1.5});
  // Verses({Key key}) : super(key: key);

  @override
  _VersesState createState() => _VersesState();
}

class _VersesState extends State<Verses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100 / widget.size,
      child: ListView(
        padding: EdgeInsets.symmetric(
            vertical: 20 / widget.size, horizontal: 10.0 / widget.size),
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              _showPicker();
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return Dialog(
              //       child: CreateVerse(),
              //     );
              //   },
              // );
            },
            child: Container(
              padding: EdgeInsets.all(10.0 / widget.size),
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: shadow,
                    spreadRadius: 1.5,
                  )
                ],
                color: primary,
                shape: BoxShape.circle,
              ),
              height: 50 / widget.size,
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 30 / widget.size,
                  color: black,
                ),
              ),
            ),
          ),
          Container(
            child: widget.verses == null
                ? SizedBox(
                    width: 1,
                  )
                : Row(
                    children: widget.verses.map((verse) {
                      String book = verse.book;
                      String chapter = verse.chapter.toString();
                      String verseStart = verse.verseStart.toString();
                      String verseEnd = verse.verseEnd.toString();
                      String verseTitle;
                      if (verse.verseEnd == null) {
                        verseTitle = book + " " + chapter + ":" + verseStart;
                      } else {
                        verseTitle = book +
                            " " +
                            chapter +
                            ":" +
                            verseStart +
                            "-" +
                            verseEnd;
                      }
                      return InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: ViewVerse(
                                  verse: verseTitle,
                                  content: verse.text,
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                color: shadow,
                                spreadRadius: 1.5,
                              )
                            ],
                            color: primary,
                          ),
                          padding: EdgeInsets.all(10.0 / widget.size),
                          margin: EdgeInsets.only(right: 10.0),
                          child: Center(
                            child: Text(
                              verseTitle,
                              style: TextStyle(
                                color: black,
                                fontSize: 22 / widget.size,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
          ),
        ],
      ),
    );
  }

  void _showPicker() {
    PickerController pickerController =
        PickerController(count: 4, selectedItems: []);
    PickerViewPopup.showMode(
      PickerShowMode.AlertDialog,
      context: context,
      title: Text('Choose Verse'),
      builder: (context, popup) {
        return Container(
          padding: EdgeInsets.all(24.0),
          child: popup,
        );
      },
      controller: pickerController,
      itemExtent: 60,
      numberofRowsAtSection: (section) {
        return verses.length;
      },
      itemBuilder: (section, row) {
        String text;
        switch (section) {
          case 0:
            text = verses[row].book;
            break;
          case 1:
            text = verses[row].chapter.toString();
            break;
          case 2:
            text = verses[row].verseStart.toString();
            break;
          case 3:
            text = verses[row].verseEnd?.toString() ?? '';
            break;
          default:
        }
        return Text(
          text,
          // '$row',
          style: TextStyle(fontSize: 16),
        );
      },
      cancel: CustomButton(
        buttonText: "Close",
        onPressed: () {},
      ),
      confirm: CustomButton(
        buttonText: "Save",
        color: primary,
        onPressed: () {},
      ),
    );
  }
}
