import 'package:flutter/material.dart';
import 'package:notesapp/classes/note.dart';
import 'dart:math';

import 'package:notesapp/constant.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.note}) : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Container(
      height: (180 + random.nextInt(100)).toDouble(),
      // height:180.0,
      //   height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: allCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(
                color: headerTextColor,
                fontSize: normalTextSize,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Text(
                note.getDescriptionConcat(),
                style: TextStyle(
                  color: normalTextColor,
                  fontSize: normalTextSizeSmall,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    note.author,
                    style: TextStyle(
                      color: normalTextColor,
                      fontSize: normalTextSizeSmall,
                    ),
                  ),
                  Text(
                    note.getTime(),
                    style: TextStyle(
                      color: normalTextColor,
                      fontSize: normalTextSizeSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
