import 'package:bble_notes/models/category_model.dart';
import 'package:bble_notes/models/note_model.dart';
import 'package:bble_notes/models/point_model.dart';
import 'package:bble_notes/models/verse_model.dart';

// categories
List<Category> categories = [
  Category(
    id: 1,
    name: 'All',
  ),
  Category(
    id: 2,
    name: 'Prayer',
  ),
  Category(
    id: 3,
    name: 'Faith',
  ),
  Category(
    id: 4,
    name: 'Love',
  ),
  Category(
    id: 5,
    name: 'Hope',
  ),
];

// list of bible verses
Verse verse1 = new Verse(
  id: 1,
  book: 'Matthew',
  chapter: 19,
  verseStart: 26,
  text:
      'Jesus looked at them and said, “With man this is impossible, but with God all things are possible.”',
);
Verse verse2 = new Verse(
  id: 2,
  book: 'Proverbs',
  chapter: 31,
  verseStart: 30,
  text:
      'Charm is deceptive, and beauty is fleeting; but a woman who fears the Lord is to be praised.',
);
Verse verse3 = new Verse(
  id: 3,
  book: 'Matthew ',
  chapter: 6,
  verseStart: 13,
  verseEnd: 15,
  text:
      "13 And lead us not into temptation,[a] but deliver us from the evil one.[b]’ 14 For if you forgive other people when they sin against you, your heavenly Father will also forgive you. 15 But if you do not forgive others their sins, your Father will not forgive your sins.",
);
Verse verse4 = new Verse(
  id: 4,
  book: '2 Timothy',
  chapter: 2,
  verseStart: 15,
  text:
      'Do your best to present yourself to God as one approved, a worker who does not need to be ashamed and who correctly handles the word of truth.',
);
Verse verse5 = new Verse(
  id: 5,
  book: '1 John',
  chapter: 1,
  verseStart: 7,
  text:
      'But if we walk in the light, as he is in the light, we have fellowship with one another, and the blood of Jesus, his Son, purifies us from all sin.',
);
Verse verse6 = new Verse(
  id: 6,
  book: 'Psalm ',
  chapter: 32,
  verseStart: 8,
  verseEnd: 9,
  text:
      '8 I will instruct you and teach you in the way you should go; I will counsel you with my loving eye on you. 9 Do not be like the horse or the mule, which have no understanding but must be controlled by bit and bridle or they will not come to you.',
);
Verse verse7 = new Verse(
  id: 7,
  book: 'Luke',
  chapter: 10,
  verseStart: 20,
  text:
      'However, do not rejoice that the spirits submit to you, but rejoice that your names are written in heaven.',
);

List<Verse> verses = [verse1, verse2, verse3, verse4, verse5, verse6, verse7];

// points
Point point1 = new Point(
  id: 1,
  text: 'Where faith is good',
  verses: [verse1, verse3, verse6, verse5, verse7],
);
Point point2 = new Point(
  id: 2,
  text: 'How to grow ',
  verses: [verse2, verse4, verse6, verse5, verse3],
);
Point point3 = new Point(
  id: 3,
  text: 'Heart hungers for evil',
  verses: [verse1, verse3],
);
Point point4 = new Point(
  id: 4,
  text: 'What is faith',
  verses: [verse1, verse3, verse6],
);
Point point5 = new Point(
  id: 5,
  text:
      'Growth is no accident. Its not a mystery. Elevation of thouht and vision is by the entrnce of the word. The word is light in tiself ',
  verses: [verse2, verse7, verse6],
);
Point point6 = new Point(
  id: 6,
  text:
      'Preparation not intention to prepare is that which determinesthe destination',
  verses: [verse1, verse3, verse6, verse4],
);
Point point7 = new Point(
  id: 7,
  text: 'What does it mean to stand perfect and complete',
  verses: [verse1],
);

// List<Point> points = [point1, point2, point3, point4, point5, point6, point7];

//notes
Note note1 = new Note(
  id: 1,
  title: 'The necessity of faith ',
  date: '20/08/2020',
  points: [point1, point2, point3],
  verses: [verse1, verse6, verse3, verse4, verse7],
  categories: [
    categories[4],
    categories[1],
  ],
);
Note note2 = new Note(
  id: 2,
  title: 'The spirit man',
  date: '11/04/19',
  points: [point2, point3, point4, point5],
  categories: [categories[2], categories[3]],
);
Note note3 = new Note(
  id: 3,
  title: 'Mercy and Faithfulness',
  date: '07/05/2020',
  points: [point1, point4, point2, point6, point7],
  verses: [verse2, verse7, verse5, verse4],
  categories: [categories[4]],
);
Note note4 = new Note(
  id: 4,
  title: 'Chirst Conciousness in overcoming',
  date: '19/05/2020',
  points: [point2, point3, point4, point5, point6],
  categories: [categories[3], categories[4]],
);
Note note5 = new Note(
  id: 5,
  title: 'The doer of words',
  date: '03/01/2021',
  points: [point1, point2, point3, point4, point7],
  categories: [
    categories[2],
    categories[1],
  ],
);

List<Note> notes = [note1, note2, note3, note4, note5];
