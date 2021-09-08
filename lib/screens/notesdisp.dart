import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/widgets/notecard.dart';
import 'package:notesapp/classes/note.dart';

class DisplayNotes extends StatefulWidget {
  const DisplayNotes({Key? key, required this.notes}) : super(key: key);
  final List<Note> notes;
  @override
  _DisplayNotesState createState() => _DisplayNotesState();
}

class _DisplayNotesState extends State<DisplayNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        fontSize: headerTextSize,
                        fontFamily: 'Roboto',
                        color: headerTextColor,
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
                    color: normalTextColor,
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
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
                    fontSize: headerTextSizeSmall,
                    fontWeight: FontWeight.w900,
                    color: categoryHeaderColor,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Private',
                  style: TextStyle(
                    fontSize: headerTextSizeSmall,
                    fontWeight: FontWeight.w900,
                    color: normalTextColor,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StaggeredGridView.countBuilder(
                staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                crossAxisCount: 2,
                itemCount: widget.notes.length,
                itemBuilder: (context, index) =>
                    NoteCard(note: widget.notes[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
