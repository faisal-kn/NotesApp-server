import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notesapp/widgets/notecard.dart';

class Note {
  final String title;
  final String description;
  double ht = 100;
  Note(this.title, this.description, this.ht);
}

class DisplayNotes extends StatefulWidget {
  const DisplayNotes({Key? key, required this.notes}) : super(key: key);
  final List<Note> notes;
  @override
  _DisplayNotesState createState() => _DisplayNotesState();
}

class _DisplayNotesState extends State<DisplayNotes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff1F1D2C),
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(5, 30, 0, 20),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Notes',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        print("hey");
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.search,
                        color: Color(0xFF4E4C5A),
                      )),
                ],
              ),
            ),
            backgroundColor: Color(0x001F1D2C),
            elevation: 0,
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Public',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF6C05C),
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Private',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF4E4C5A),
                          ),
                        )),
                  ],
                ),
                StaggeredGridView.countBuilder(
                  staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  crossAxisCount: 2,
                  itemCount: widget.notes.length,
                  itemBuilder: (context, index) =>
                      NoteCard(note: widget.notes[index]),
                ),
              ],
            ),
          ))),
    );
  }
}
