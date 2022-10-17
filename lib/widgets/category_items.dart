import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryItems({this.iconImagePath, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(124, 220, 246, 1),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              iconImagePath,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
