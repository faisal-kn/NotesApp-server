import 'package:flutter/material.dart';
import 'package:notesapp/screens/notesdisp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DisplayNotes(notes: [
      Note('a', 'a1', 120),
      Note('b', 'b1', 180),
      Note('c', 'c1', 160),
      Note('d', 'd1', 149),
      Note('e', 'e1', 230),
      Note('f', 'f1', 180),
      Note('g', 'g1', 160),
      Note('h', 'h1', 149),
      Note('i', 'i1', 120),
      Note('j', 'j1', 180),
      Note('k', 'k1', 160),
      Note('l', 'l1', 149),
      Note('m', 'm1', 120),
      Note('n', 'n1', 180),
    ]),
  ));
}
