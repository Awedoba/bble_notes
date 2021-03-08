import 'package:bble_notes/models/point_model.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:bble_notes/widgets/verses.dart';
import 'package:flutter/material.dart';

class Points extends StatefulWidget {
  final List<Point> points;
  Points({this.points});

  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.points.map((point) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            margin: EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10.0),
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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    point.text,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Verses(
                  verses: point.verses,
                  size: 2,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
