import 'package:bble_notes/models/damy_data.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: index == selectedIndex ? Colors.black : Colors.white,
                    spreadRadius: 1.5,
                  )
                ],
                color: index == selectedIndex ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(categories[index].name,
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          index == selectedIndex ? Colors.white : Colors.black,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
