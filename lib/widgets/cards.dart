import 'package:flutter/material.dart';

import '../screens/diagnosis_screen.dart';

class cardItems extends StatelessWidget {
  final cardImagePath;
  final String catName;
  final String description;

  cardItems({this.cardImagePath, this.catName, this.description});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DiagnosisScreen(),
          ),
        );
      },
      child: Container(
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 5,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: FittedBox(
                    child: Image.asset(
                      cardImagePath,
                      height: 40,
                    ),
                  ),
                ),
              ),
              title: Text(
                catName,
              ),
              subtitle: Text(description),
            ),
          ),
        ),
      ),
    );
  }
}
