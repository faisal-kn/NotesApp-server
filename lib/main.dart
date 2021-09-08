import 'package:flutter/material.dart';
import 'package:notesapp/classes/note.dart';
import 'package:notesapp/screens/login.dart';
import 'package:notesapp/screens/notesdisp.dart';

import 'constant.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: headerTextColor)),
    )),
    home: DisplayNotes(notes: [
      Note('title1', 'description1', 'author1'),
      Note('title2', 'description2', 'author2'),
      Note('title3', 'description3', 'author3'),
      Note('title4', 'description4', 'author4'),
      Note('title5', 'description5', 'author5'),
      Note('title6', 'description6', 'author6'),
      Note('title7', 'description7', 'author7'),
    ]),
    // home: Login(),
  ));
}
