import 'package:flutter/material.dart';
import 'package:notesapp/screens/notesdisp.dart';
import 'dart:math';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.note}) : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Container(
      height: (180 + random.nextInt(100)).toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF262636),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(
                color: Color(0xFFFEFDFF),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Text(
              note.description,
              style: TextStyle(
                color: Color(0xFF4E4C5A),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
