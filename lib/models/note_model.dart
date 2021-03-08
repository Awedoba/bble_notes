import 'package:bble_notes/models/category_model.dart';
import 'package:bble_notes/models/point_model.dart';
import 'package:bble_notes/models/verse_model.dart';

class Note {
  final int id;
  final String title;
  final String date;
  final List<Point> points;
  final List<Verse> verses;
  final List<Category> categories;

  Note({
    this.id,
    this.title,
    this.date,
    this.points,
    this.verses,
    this.categories,
  });
}
