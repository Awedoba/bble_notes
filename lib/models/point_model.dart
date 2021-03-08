import 'package:bble_notes/models/verse_model.dart';

class Point {
  final int id;
  final String text;
  final List<Verse> verses;
  Point({
    this.id,
    this.text,
    this.verses,
  });
}
